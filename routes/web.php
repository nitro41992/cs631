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

//Route::get('/', 'WelcomeController@index')->name('welcome');

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home/id','HomeController@filterId')->name('home.filterId');
Route::get('/home/title','HomeController@filterTitle')->name('home.filterTitle');
Route::get('/home/pubName','HomeController@filterPubName')->name('home.filterPubName');
Route::post('/home/insertDocument','HomeController@insertDocument')->name('home.insertDocument');
Route::post('/home/deleteDocument/{id}', 'homeController@deleteDocument')->name('home.deleteDocument');

Route::post('/document', 'DocumentController@getReaderByCardNumber')->name('document.getReaderByCardNumber');
Route::get('/document/{id}', 'DocumentController@index')->name('document');
Route::get('/document/id/{id}','DocumentController@filterId')->name('document.filterId');
Route::get('/document/title/{id}','DocumentController@filterTitle')->name('document.filterTitle');
Route::get('/document/pubName/{id}','DocumentController@filterPubName')->name('document.filterPubName');

Route::get('/copy/{cid}/{did}', 'CopyController@index')->name('copy.index');
Route::post('/copy/checkout', 'CopyController@checkout')->name('copy.checkout');
Route::post('/copy/return', 'CopyController@return')->name('copy.return');
Route::post('/copy/cancelRes', 'CopyController@cancelReservation')->name('copy.cancelReservation');
Route::post('/copy/reserve', 'CopyController@reserve')->name('copy.reserve');

Route::get('/adminCopy/{did}', 'AdminCopyController@index')->name('adminCopy.index');
Route::post('/adminCopy/checkout', 'AdminCopyController@checkout')->name('adminCopy.checkout');
Route::post('/adminCopy/return', 'AdminCopyController@return')->name('adminCopy.return');
Route::post('/adminCopy/cancelRes', 'AdminCopyController@cancelReservation')->name('adminCopy.cancelReservation');
Route::post('/adminCopy/reserve', 'AdminCopyController@reserve')->name('adminCopy.reserve');
Route::post('/adminCopy/delete', 'AdminCopyController@delete')->name('adminCopy.delete');
Route::post('/adminCopy/insertCopy', 'AdminCopyController@insertCopy')->name('adminCopy.insertCopy');

Route::get('/readerProfile/{id}', 'ReaderProfileController@index')->name('readerProfile.index');