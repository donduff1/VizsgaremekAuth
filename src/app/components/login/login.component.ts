// login.component.ts
import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  email: string = '';
  password: string = '';

  constructor(private http: HttpClient) { }

  login(): void {
    const userData = {
      email: this.email,
      password: this.password
    };

    this.http.post<any>('http://127.0.0.1:8000/api/login', userData).subscribe(
      response => {
        console.log('User logged in successfully:', response);
        // Optionally, you can redirect the user or perform other actions after successful login
      },
      error => {
        console.error('Failed to login user:', error);
        // Optionally, you can display an error message to the user
      }
    );
  }
}
