<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Models\Movie;

class MovieLoaderController extends Controller
{
    public function loadMovies()
    {
        // Fetch API key from environment variables
        $apiKey = env('TMDB_API_KEY');

        // Make request to the API to get movies
        $response = Http::get('https://api.themoviedb.org/3/search/movie', [
            'api_key' => $apiKey,
            'query' => 'spiderman', // Change this to your desired query
        ]);

        // Check if request was successful
        if ($response->successful()) {
            // Retrieve movie data from the API response
            $moviesData = $response->json()['results'];

            // Iterate through each movie data and store it in the database
            foreach ($moviesData as $movieData) {
                // Create a new movie record in the database
                Movie::create([
                    'title' => $movieData['title'] ?? null,
                    'overview' => $movieData['overview'] ?? null,
                    'release_date' => $movieData['release_date'] ?? null,
                    'adult' => $movieData['adult'] ?? null,
                    'backdrop_path' => $movieData['backdrop_path'] ?? null,
                    'belongs_to_collection' => $movieData['belongs_to_collection'] ?? null,
                    'budget' => $movieData['budget'] ?? null,
                    'homepage' => $movieData['homepage'] ?? null,
                    'imdb_id' => $movieData['imdb_id'] ?? null,
                    'original_language' => $movieData['original_language'] ?? null,
                    'original_title' => $movieData['original_title'] ?? null,
                    'popularity' => $movieData['popularity'] ?? null,
                    'poster_path' => $movieData['poster_path'] ?? null,
                    'revenue' => $movieData['revenue'] ?? null,
                    'runtime' => $movieData['runtime'] ?? null,
                    'status' => $movieData['status'] ?? null,
                    'tagline' => $movieData['tagline'] ?? null,
                ]);
            }

            return response()->json(['message' => 'Movies loaded successfully'], 200);
        } else {
            // Return error response if API request fails
            return response()->json(['message' => 'Failed to load movies'], $response->status());
        }
    }
}
