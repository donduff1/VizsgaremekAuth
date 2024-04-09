<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    /**
     * Show the application home page.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        // Fetch a movie by its ID
        $movies = DB::table('movies')->get(); 
       
        // Return the home view with any necessary data
        return view('home', compact('movies'));
    }
}
