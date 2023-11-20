<?php

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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('account/redirect', 'Auth\LoginController@redirectToProvider')->name('login.gg');
Route::get('account/callback', 'Auth\LoginController@handleProviderCallback');

Route::group(['namespace' => 'Auth','prefix' => 'account','middleware' => 'check_Fe'], function(){
    Route::get('register','RegisterController@getFormRegister')->name('get.register');
    Route::post('register','RegisterController@postRegister');

    Route::get('login','LoginController@getFormLogin')->name('get.login');
    Route::post('login','LoginController@postLogin');

    Route::get('logout','LoginController@getLogout')->name('get.logout');
    Route::get('reset-password','ResetPasswordController@getEmailReset')->name('get.email_reset_password');
    Route::post('reset-password','ResetPasswordController@checkEmailResetPassword');


    Route::get('new-password','ResetPasswordController@newPassword')->name('get.new_password');
    Route::post('new-password','ResetPasswordController@savePassword');

    Route::get('/{social}/redirect', 'SocialAuthController@redirect')->name('get.login.social');
    Route::get('/{social}/callback', 'SocialAuthController@callback')->name('get.login.social_callback');
});
//logout account
Route::get('account-logout','Auth\LoginController@getLogout')->name('get.logout');


Route::get('/auth/redirect/{provider}', 'SocialController@redirect');
Route::get('/callback/{provider}', 'SocialController@callback');
// Login admin
Route::group(['prefix' => 'admin-auth','namespace' => 'Admin\Auth','middleware' => 'check_Be'], function() {
    Route::get('login','AdminLoginController@getLoginAdmin')->name('get.login.admin');
    Route::post('login','AdminLoginController@postLoginAdmin');

});
//logout admin
Route::get('admin-logout','Admin\Auth\AdminLoginController@getLogoutAdmin')->name('get.logout.admin');


Route::group(['namespace' => 'Frontend'], function() {
    Route::get('','HomeController@index')->name('get.home');
    Route::get('ajax-load-product-recently','HomeController@getLoadProductRecently')->name('ajax_get.product_recently');
    Route::get('ajax-load-slide','HomeController@loadSlideHome')->name('ajax_get.slide');
    Route::get('san-pham','ProductController@index')->name('get.product.list');
    Route::get('dan-muc/{slug}','CategoryController@index')->name('get.category.list');
    Route::get('san-pham/{slug}','ProductDetailController@getProductDetail')->name('get.product.detail');
    Route::get('san-pham/{slug}/danh-gia','ProductDetailController@getListRatingProduct')->name('get.product.rating_list');

    Route::get('bai-viet','BlogController@index')->name('get.blog.home');
    Route::get('menu/{slug}','BlogMenuController@getArticleByMenu')->name('get.article.by_menu');
    Route::get('bai-viet/{slug}','ArticleDetailController@index')->name('get.blog.detail');
    // GIỏ hàng
    Route::get('don-hang','ShoppingCartController@index')->name('get.shopping.list');
    Route::get('get-state-list','ShoppingCartController@getStateList')->name('get-state-list');
    Route::get('api/v1/cities/search', 'ShoppingCartController@search_province')
    ->name('api.cities.search');
    Route::prefix('shopping')->group(function () {
        Route::get('add/{id}','ShoppingCartController@add')->name('get.shopping.add');
        Route::get('delete/{id}','ShoppingCartController@delete')->name('get.shopping.delete');
        Route::get('update/{id}','ShoppingCartController@update')->name('ajax_get.shopping.update');
        Route::get('theo-doi-don-hang','TrackOrderController@index')->name('get.track.transaction');
        Route::post('pay','ShoppingCartController@postPay')->name('post.shopping.pay');
        //thanh toasn online
        Route::get('/thanh-toan-pay','ShoppingCartController@showFormPay_ol')->name('get.form.pay_online');
        Route::post('/thanh-toan-pay','ShoppingCartController@savePayOnline');

    });

    //Comment
    Route::group(['prefix' => 'comment', 'middleware' => 'check_user_login'], function(){
        Route::post('ajax-comment','CommentsController@store')->name('ajax_post.comment');
    });

    Route::get('lien-he','ContactController@index')->name('get.contact');
    Route::post('lien-he','ContactController@store');
    Route::get('san-pham-ban-da-xem','PageStaticController@getProductView')->name('get.static.product_view');
    Route::get('ajax/san-pham-ban-da-xem','PageStaticController@getListProductView')->name('ajax_get.product_view');
    Route::get('huong-dan-mua-hang','PageStaticController@getShoppingGuide')->name('get.static.shopping_guide');
    Route::get('chinh-sach-doi-tra','PageStaticController@getReturnPolicy')->name('get.static.return_policy');
    Route::get('chinh-sach-bao-mat','PageStaticController@getPrivacyPolicy')->name('get.static.privacy_policy');
    Route::get('chinh-sach-bao-hanh','PageStaticController@getWarrantyPolicy')->name('get.static.warranty_policy');
    Route::get('cham-soc-khach-hang','PageStaticController@getCustomerCare')->name('get.static.customer_care');



    Route::get('ajax/load-document','PageStaticController@getDocumentAjax')->name('get_ajax.static.document');
    Route::get('demo/view-file','PageStaticController@getDemoViewFile');

    Route::group(['prefix' => 'document'], function(){
        Route::get('/index','DocumentController@index')->name('get.document.index');
        Route::get('/list','DocumentController@list')->name('get.document.list');
        Route::get('/detail','DocumentController@detail')->name('get.document.detail');
    });

});
Route::group(['prefix' => 'laravel-filemanager'], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});

include 'route_api.php';

