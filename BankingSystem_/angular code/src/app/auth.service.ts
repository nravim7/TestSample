import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private baseUrl = 'http://localhost:8081/api/v1.0/bank'; // Update with your Spring Boot backend URL

  constructor(private http: HttpClient) { }

  register(name: string, phoneno: number, username: string, password: string,emailid: string, balance: number): Observable<any> {
    const url = `${this.baseUrl}/newaccount`;
    const body = { name, phoneno, username, password,emailid, balance};
    return this.http.post(url, body);
  }

  login(username: string, password: string): Observable<any> {
    const url = `${this.baseUrl}/login`;
    const body = { username, password };
    return this.http.post(url, body);
  }
  
}
