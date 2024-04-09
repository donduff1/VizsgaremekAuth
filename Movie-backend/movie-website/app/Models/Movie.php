<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    protected $fillable = [
        'title',
        'overview',
        'release_date',
        'poster_path',
        'adult',
        'backdrop_path',
        'belongs_to_collection',
        'budget',
        'homepage',
        'imdb_id',
        'original_language',
        'original_title',
        'popularity',
        'revenue',
        'runtime',
        'status',
        'tagline',
        'video',
        'vote_average',
        'vote_count',
        // Add other fields as needed
    ];
}
