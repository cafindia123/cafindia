<?php

namespace App\Providers;

use Aacotroneo\Saml2\Events\Saml2LoginEvent;
use Aacotroneo\Saml2\Saml2Auth;
use App\Models\User;
use Illuminate\Contracts\Session\Session;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Event;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\ServiceProvider;

class SAML2ServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        Event::listen('Aacotroneo\Saml2\Events\Saml2LoginEvent', function (Saml2LoginEvent $event) {

            $messageId = $event->getSaml2Auth()->getLastMessageId();
            $user = $event->getSaml2User();
            error_log($user->getUserId());
            $userData = [
                'id' => $user->getUserId(),
                'attributes' => $user->getAttributes(),
                'assertion' => $user->getRawSamlAssertion()
            ];

            $sso_user_id = $user->getUserId();
            $username = $user->getAttribute('http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name')[0];
            $email = $user->getAttribute('http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name')[0];
            $name = $user->getAttribute('http://schemas.microsoft.com/identity/claims/displayname')[0];
            $password  = Hash::make('anything');

            $laravelUser = User::where('sso_user_id', $user->getUserId())->where('email', $email)->first();

            if (!$laravelUser) {
                User::create([
                    'sso_user_id'   => $sso_user_id,
                    'username'      => $username,
                    'email'         => $email,
                    'name'          => $name,
                    'role_id'       => 1,
                    'password'      => $password,
                ]);
            }
            $laravelUser = User::where('sso_user_id', $user->getUserId())->first();
            if ($laravelUser) {
                Auth::login($laravelUser, true);
            }
            
            session()->put('saml_event', $event);
            return config('voyager.user.redirect', route('voyager.dashboard'));

        });

        Event::listen('Aacotroneo\Saml2\Events\Saml2LogoutEvent', function ($event) {
            Log::info('SSO Logout event listener');
            Auth::logout();
        });
    }
}
