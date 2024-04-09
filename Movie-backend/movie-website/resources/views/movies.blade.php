<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MovieApp</title>
    <style>
        .movie-poster {
            display: inline-block;
            margin-right: 20px;
            cursor: pointer;
        }

        .movie-poster img {
            width: 150px; /* Adjust as needed */
            height: auto;
        }

        .movie-title {
            margin-top: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>MovieApp</h1>
    @foreach ($movies as $movie)
        <div class="movie">
            <a href="{{ route('show.movie', ['id' => $movie->id]) }}" class="movie-poster">
                <img src="https://image.tmdb.org/t/p/w600_and_h900_bestv2{{ $movie->poster_path }}" alt="{{ $movie->title }}">
            </a>
            <div class="movie-title">{{ $movie->title }}</div>
        </div>
    @endforeach
</body>
</html>
