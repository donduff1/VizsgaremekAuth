import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { AddMovieComponent } from './components/add-movie/add-movie.component';
import { MovieRatingComponent } from './components/movie-rating/movie-rating.component';
import { LoginComponent } from './components/login/login.component';
import { SignupComponent } from './components/signup/signup.component';
import { ProfileComponent } from './components/profile/profile.component';
import { AdminComponent } from './admin/admin/admin.component';
import { UsersComponent } from './admin/users/users.component';


const routes: Routes = [
  { path : "home", component: HomeComponent },
  { path : "addmovie", component: AddMovieComponent, data: { roles: ['admin'] }},
  { path : "movierating", component: MovieRatingComponent, data: { roles: ['admin',"user"] }},
  { path : "login", component: LoginComponent },
  { path : "signup", component: SignupComponent, data: { roles: ['admin',"user"] }},
  { path : "profile", component: ProfileComponent, data: { roles: ['admin',"user"] }}, 
  { path: "admin", component: AdminComponent, data: { roles: ['admin'] }},
  { path: "users", component: UsersComponent, data: { roles: ['admin'] }},
  { path: 'movie-rating/:id', component: MovieRatingComponent },

  { path: " ", component: HomeComponent },
  { path: "**", component: HomeComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }