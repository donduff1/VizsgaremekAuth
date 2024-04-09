// signup.component.ts
import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent {
  name: string = '';
  email: string = '';
  password: string = '';
  passwordConfirmation: string = '';
  birthdate: string = '';

  constructor(private http: HttpClient) { }

  register(): void {
    const userData = {
      name: this.name,
      email: this.email,
      password: this.password,
      password_confirmation: this.passwordConfirmation,
      birthdate: this.birthdate
    };

    this.http.post<any>('http://127.0.0.1:8000/api/register', userData).subscribe(
      response => {
        console.log('User registered successfully:', response);
        // Optionally, you can redirect the user or perform other actions after successful registration
      },
      error => {
        console.error('Failed to register user:', error);
        // Optionally, you can display an error message to the user
      }
    );
  }
}
