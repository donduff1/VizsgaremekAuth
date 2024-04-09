<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Models\Movie;

class MovieController extends Controller
{
    /*public function fetchAndStoreMovies(Request $request)
    {
        $apiKey = env('TMDB_API_KEY');

        $response = Http::get('https://api.themoviedb.org/3/search/movie', [
            'api_key' => $apiKey,
            'query' => $request->input('query'),
            
        ]);

        $moviesData = $response->json()['results'];

        foreach ($moviesData as $movieData) {
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

        return redirect()->route('show.movies');
    }*/
    public function showMovies()
{
    $movies = Movie::all(); 
    return response()->json($movies);
}

public function showMovie($id)
{
    $movie = Movie::findOrFail($id); 

    return view('movie', ['movie' => $movie]);
}
}
