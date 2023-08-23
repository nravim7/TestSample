import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { LandingComponent } from './landing/landing.component';
import { WelcomeComponent } from './welcome/welcome.component';
import { HttpClientModule } from '@angular/common/http';

const routes: Routes = [
  {
    path: 'login',
    component: LoginComponent
  },
  {
    path: 'signup',
    component: SignupComponent
  },
  {
    path: 'landing',
    component: LandingComponent
  },
  {
    path: 'welcome',
    component:WelcomeComponent
  },
  {
    path: '**',
    redirectTo: 'landing',
    pathMatch:'full'
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes), HttpClientModule],
  providers: [HttpClientModule],
  exports: [RouterModule]
})
export class AppRoutingModule { }
