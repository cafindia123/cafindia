<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;
use Laravel\Fortify\Http\Controllers\PasswordResetLinkController;

// use App\Http\Controllers\Controller;
// Route::get('/',  [Controller::class, 'index'])->name('welcome');
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/* Route::get('/', function () {
    return view('welcome');
})->name('welcome'); */
Route::get('/register', '\\App\\Http\\Controllers\\Auth\\RegisterController@showRegistrationForm')->name('register');
Route::get('/login', '\\Laravel\\Fortify\\Http\\Controllers\\AuthenticatedSessionController@create');
Route::post('/login', '\\App\\Http\\Controllers\\Auth\\LoginController@postLogin')->name('login');
Route::post('/logout', '\\App\\Http\\Controllers\\Auth\\LoginController@logout')->name('logout');
Route::get('/forgot-password', [PasswordResetLinkController::class, 'create']);
Route::get('/', 'Controller@index')->name('welcome');
Route::get('/trustees', 'Controller@trustees')->name('trustees');
Route::get('/team', 'Controller@team')->name('team');
Route::get('/landing-page', 'Controller@landingPage')->name('landingPage');
Route::get('/landing-page2', 'Controller@landingPage2')->name('landingPage2');
Route::get('/contact-us', 'Controller@contactUs')->name('contactUs');
Route::post('contact-us', ['as'=>'contactus.store','uses'=>'Controller@contactUSPost']);
Route::post('subscribe', ['as'=>'subscribe.store','uses'=>'Controller@subscribe']);

Route::post('/webfirebase/tokens/save/token', 'Controller@saveToken')->name('webfirebase-tokens.save-token');
Route::get('/webfirebase/send-notification', 'Controller@sendNotification')->name('webfirebase.send-notification');


Route::get('/ngos/register', 'Controller@ngoRegister')->name('ngos.register');
Route::post('/ngos/register', 'Controller@ngoRegisterStore')->name('ngo.register.store');

Route::get('/donate/now', 'Controller@donateNow')->name('donate.now');
Route::post('/donate/now', 'Controller@donateNowStore')->name('donate.now.store');
Route::get('/search/', 'Controller@searchSystem')->name('search');

Route::group(['prefix' => 'admin'], function () {
	  Voyager::routes();
	    //   App\Http\Controllers;
		$namespacePrefix = '\\App\\Http\\Controllers\\';
        Route::group([
            'as'     => 'primary-page-sections.',
            'prefix' => 'primary-page-sections',
        ], function () use ($namespacePrefix) {
            Route::post('/primary-page-sections', ['uses' => $namespacePrefix.'PrimarySubPageController@store', 'as' => 'store']);
            Route::post('/primary-page-section-cards', ['uses' => $namespacePrefix.'PrimarySubPageController@store', 'as' => 'store-cards']);
            Route::post('/primary-page-section-custom-layout', ['uses' => $namespacePrefix.'PrimarySubPageController@store', 'as' => 'store-custom-layout']);
        });
        Route::group([
            'as'     => 'footer-page-sections.',
            'prefix' => 'footer-page-sections',
        ], function () use ($namespacePrefix) {
            Route::post('/footer-page-sections', ['uses' => $namespacePrefix.'FooterSubPageController@store', 'as' => 'store']);
            Route::post('/footer-page-section-cards', ['uses' => $namespacePrefix.'FooterSubPageController@store', 'as' => 'store-cards']);
        });
});

Route::get('/clear', function() {
    Artisan::call('view:clear');
    Artisan::call('cache:clear');
    Artisan::call('route:clear');
    Artisan::call('clear-compiled');
    Artisan::call('config:cache');
    Artisan::call('config:clear');
    //Artisan::call('storage:link');
    // Artisan::call('route:cache');
    //Artisan::call('queue:restart');
    //Artisan::call('queue:work --tries=3');

    return "Cleared!";
});/*
Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
}); */

Route::group(['middleware' => ['auth:sanctum', 'verified']], function () {
    Route::get('/dashboard', 'FrontUserController@donationHistory')->name('dashboard');
    Route::get('/dashboard/explore-all-programs', 'FrontUserController@exploreAllPrograms')->name('exploreAllPrograms');

});
Route::get('content-details/{page_slug}/{slug}', 'Controller@blogContent')->name('blog.content');

//Blog route
Route::get('blog/details/{slug}', 'Controller@blogDetails')->name('blog.details');
Route::get('story-of-hope/details/{slug}', 'Controller@storyOfDetails')->name('storyOfHome.details');
Route::get('campaign/details/{slug}', 'Controller@campaignDetails')->name('campaign.details');
Route::get('career/details/{slug}', 'Controller@careerDetails')->name('career.details');

Route::get('page/{page_slug}', 'Controller@page')->name('page');
Route::get('{page_slug}', 'Controller@primaryPages')->name('PrimaryNavBar');//{page_slug}
Route::get('{page_slug}/{child_slug}', 'Controller@primaryPages')->name('PrimaryNavBarChaild');
Route::get('{page_slug}/{child_slug}/{sub_child_slug}', 'Controller@primaryPages')->name('PrimaryNavBarSubChild');

//footerNav route
Route::get('{category_slug}/{child_slug}', 'Controller@primaryPages')->name('footerNavBarChaild');
Route::get('{category_slug}/{child_slug}/{sub_child_slug}', 'Controller@primaryPages')->name('footerNavBarSubChaild');
