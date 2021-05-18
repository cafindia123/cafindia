<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\{PrimaryCategory,Category};
use View;
class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    
        $PrimaryCategory = $this->getPrimaryCategory();
        $footerNavigation = $this->getCategory();
		// dd($footerNavigation);
		 View::share('PrimaryCategory', $PrimaryCategory);
		 View::share('footerNavigation', $footerNavigation);
	}
    public function getPrimaryCategory() {
		//\DB::enableQueryLog();
        $getCat = PrimaryCategory::whereNull('parent_id')
			->with(['primaryPage','parent_items.children' => function ($q) {
                $q->orderBy('order');
            }])->orderBy('order', 'ASC')->get();
			//dd(\DB::getQueryLog());
        return $getCat;
    }
	
    public function getCategory() {
		//\DB::enableQueryLog();
        $getCat = Category::whereNull('parent_id')
			->with(['post','parent_items.children' => function ($q) {
                $q->orderBy('order');
            }])->orderBy('order', 'ASC')->get();
			//dd(\DB::getQueryLog());
        return $getCat;
    }
	public function showRegistrationForm()
    {
        return view('auth.register');
    }
    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
    }
}
