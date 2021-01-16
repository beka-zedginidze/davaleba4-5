<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('posts', ['App\Http\Controllers\PostController', 'index']);
Route::post('comments/add', ['App\Http\Controllers\CommentController', 'store']);
Route::post('posts/{post}/delete', ['App\Http\Controllers\PostController', 'destroy']);

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
