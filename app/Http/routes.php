<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/contacts/autocompelete', [
  'uses' => 'ContactsController@autocompelete',
  'as' => 'contacts.autocompelete'
]);

Route::post('/groups/store', [
  'uses' => 'GroupsController@store',
  'as' => 'groups.store'
]);

Route::resource('contacts', 'ContactsController');

Route::auth();

Route::get('/home', 'HomeController@index');
