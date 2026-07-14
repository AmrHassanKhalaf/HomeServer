<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;

class AiController extends Controller
{
    public function hello()
    {
	$response = Http::get(config('services.ai.url').'/hello');

        return response()->json([
            'laravel' => 'API Running',
            'fastapi' => $response->json(),
        ]);
    }
}
