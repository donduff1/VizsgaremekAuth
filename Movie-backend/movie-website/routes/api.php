<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\MovieLoaderController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and are assigned to the
| "api" middleware group. Make something great!
|
*/

// Authentication routes
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);

// Routes accessible only to authenticated users
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/user', function (Request $request) {
        return $request->user();
    });

    // User profile routes here

    // Routes for movie management (admin only)
    Route::middleware('admin')->group(function () {
        Route::post('/movies', [MovieController::class, 'store']); // Add movie
        Route::put('/movies/{id}', [MovieController::class, 'update']); // Update movie
        Route::delete('/movies/{id}', [MovieController::class, 'destroy']); // Delete movie
    });

    // Movie rating and commenting routes
    Route::post('/movies/{id}/rate', [MovieController::class, 'rateMovie']);
    Route::post('/movies/{id}/comment', [MovieController::class, 'addComment']);
    Route::delete('/comments/{id}', [CommentController::class, 'destroy']);
});

// Public routes for movie browsing
Route::get('/movies', [MovieController::class, 'showMovies']);
Route::get('/movies/{id}', [MovieController::class, 'show']);

// Additional routes
Route::post('/movies/search', [MovieController::class, 'fetchAndStoreMovies'])->name('movies.search');
Route::get('/load-movies', [MovieLoaderController::class, 'loadMovies']);

