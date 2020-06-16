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
    return redirect('/home');
});

Route::resource('/home', 'SubjectController');
Route::get('/test/{id}/', 'QuizController@index')->name('test');
Route::post('create', 'QuizController@store')->name('create');
Route::get('report/{id}/', 'QuizController@report')->name('report');