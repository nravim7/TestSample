import { Component } from '@angular/core';
import { AuthService } from '../auth.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  user = {
    username: '',
    password: ''
  };
password: any;
username: any;

  constructor(private authService: AuthService) { }

  login(): void {
    this.authService.login(this.user.username, this.user.password)
      .subscribe(
        response => {
          console.log('Login successful');
          // Additional logic after successful login
        },
        error => {
          console.error('Login failed:', error);
          // Additional error handling logic
        }
      );
  }
}
