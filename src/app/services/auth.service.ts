import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { BaseService } from './base.service';


@Injectable({
  providedIn: 'root'
})
export class AuthService {

  private url = "http://127.0.0.1:8000/api";
  private userRoles: string[] = [];
  constructor(private http: HttpClient,private base: BaseService) {
    this.fetchUserRoles();
  }

  private fetchUserRoles(): void {
    const rolesFromSession = sessionStorage.getItem('role');

    if (rolesFromSession) {
      this.userRoles = [rolesFromSession];
    }
  }

  createUser(email: any, name: any, password: any, password_confirmation: any, birthdate: any): Observable<any> {
    const userData = { email, name, password, password_confirmation, birthdate };
    return this.http.post(`${this.url}/register`, userData);
  }

  login(loginObj: any): Observable<any> {
    return this.http.post(`${this.url}/login`, loginObj);
  }

  logout(token: string): Observable<any> {
    const headers = new HttpHeaders({ 'Authorization': `Bearer ${token}` });
    return this.http.post(`${this.url}/logout`, {}, { headers });
  }

  isLoggedIn(): boolean {
    return !!sessionStorage.getItem("token");
  }

  isAdmin(): boolean {
    return this.userRoles.includes('admin');
  }

  updateRolesAfterLogin(): void {
    this.fetchUserRoles();
  }
}