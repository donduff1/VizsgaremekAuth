import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class BaseService {
 
  private url = "http://127.0.0.1:8000/api/";
  constructor(private http:HttpClient) { }

  
  updateProfile(birthdate: Date, name: string, email: string): Observable<any> {
    const id = sessionStorage.getItem("id");
    const user = {id,birthdate,name,email};
    return this.http.put(`${this.url}modifyuser`, user);
  }

  getUserData(id: any): Observable<any> {
    return this.http.get(`${this.url}getuser?id=${id}`);
  }

  deleteUser(id: any) {
    return this.http.delete(`${this.url}deleteuser?id=${id}`);
  }
}