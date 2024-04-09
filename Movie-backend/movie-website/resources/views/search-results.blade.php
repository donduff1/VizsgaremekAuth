<form action="{{ route('movies.search') }}" method="POST">
    @csrf
    <input type="text" name="query" placeholder="Enter movie title">
    <button type="submit">Search</button>
</form>