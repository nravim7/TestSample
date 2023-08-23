import { Component } from '@angular/core';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms'; 
import { ReactiveFormsModule } from '@angular/forms';
import { AuthService } from '../auth.service';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})



export class SignupComponent {
onSubmit() {
throw new Error('Method not implemented.');
}
  user = {
    name:'',
    phoneno: 0,
    username: '',
    password: '',
    emailid: '',
    balance: 0
    
  };

  constructor(private authService: AuthService) { }

  register(): void {
    this.authService.register(this.user.name, this.user.phoneno, this.user.username, this.user.password,  this.user.emailid, this.user.balance,)
      .subscribe(
        response => {
          console.log('Registration successful');
          // Additional logic after successful registration
        },
        error => {
          console.error('Registration failed:', error);
          // Additional error handling logic
        }
      );
  }
}
