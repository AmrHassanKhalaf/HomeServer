<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AiController;

Route::get('/hello', function () {
    return response()->json([
        'message' => 'Hello from Laravel API',
        'server' => gethostname(),
        'time' => now(),
    ]);
});

Route::get('/ai', [AiController::class, 'hello']);
