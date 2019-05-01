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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::post('/', 'WelcomeController@getReaderByCardNumber')->name('getReaderByCardNumber');

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/document/{id}', 'DocumentController@index')->name('document');
Route::get('/document/id/{id}','DocumentController@filterId')->name('document.filterId');
Route::get('/document/title/{id}','DocumentController@filterTitle')->name('document.filterTitle');
Route::get('/document/pubName/{id}','DocumentController@filterPubName')->name('document.filterPubName');

Route::get('/copy/{cid}/{did}', 'CopyController@index')->name('copy.index');
Route::post('/copy/checkout', 'CopyController@checkout')->name('copy.checkout');
Route::post('/copy/return', 'CopyController@return')->name('copy.return');
Route::post('/copy/cancelRes', 'CopyController@cancelReservation')->name('copy.cancelReservation');
Route::post('/copy/reserve', 'CopyController@reserve')->name('copy.reserve');
