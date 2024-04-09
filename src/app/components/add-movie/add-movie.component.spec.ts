// add-movie.component.ts
import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-add-movie',
  templateUrl: './add-movie.component.html',
  styleUrls: ['./add-movie.component.css']
})
export class AddMovieComponent {
  query: string = '';

  constructor(private http: HttpClient) { }

  searchMovies(): void {
    if (this.query.trim() !== '') {
      this.http.get<any>(`/load-movies?query=${this.query}`).subscribe(
        response => {
          console.log('Movies loaded successfully:', response);
          // Optionally, you can perform additional actions after successfully loading movies
        },
        error => {
          console.error('Failed to load movies:', error);
          // Optionally, you can handle error cases here
        }
      );
    } else {
      console.error('Please enter a movie title');
      // Optionally, you can provide feedback to the user if the input is empty
    }
  }
}
