import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  private url = "http://127.0.0.1:8000/api";
  constructor(private http: HttpClient) { }

  
  addMovie(title: string, releaseYear: number, description: string, review: string): Observable<any> {
    const movie = {
      title,
      releaseYear,
      description,
      review
    };
    return this.http.post<any>(`${this.url}/addmovie`, movie);
  }
  getMovie(id: number): Observable<any> {
    return this.http.get<any>(`${this.url}/getmovie?id=${id}`);
  }
  
  updateMovie(id: number, title: string, releaseYear: number, description: string, review: string ): Observable<any> {
    const movie = {
      id,
      title,
      releaseYear,
      description,
      review
    };
    return this.http.put<any>(`${this.url}/updatemovie`, movie);
  }
  deleteMovie(id: number): Observable<any> {
    return this.http.delete<any>(`${this.url}/deletemovie?id=${id}`);
  }

submitRating(rating: number) {
  console.log(`Film értékelése: ${rating}`);
}

getMovieTitleById(movieId: number): Observable<string> {
  return this.http.get<string>(`${this.url}/getmovietitle?id=${movieId}`);
}
}