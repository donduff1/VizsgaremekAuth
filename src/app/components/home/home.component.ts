import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
  export class HomeComponent implements OnInit {
   
    userData: any;
  
    constructor(private http: HttpClient) { }
  
    ngOnInit(): void {
      this.http.get<any>('http://127.0.0.1:8000/api/movies').subscribe(
        (response) => {
          this.userData = response;
        },
        (error) => {
          console.error('Hiba történt az adatok lekérése során:', error);
        }
      );
    }
  }