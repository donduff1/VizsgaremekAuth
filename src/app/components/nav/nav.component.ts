import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';

@Component({
  selector: 'app-nav',
  templateUrl: './nav.component.html',
  styleUrl: './nav.component.css'
})
export class NavComponent {

  constructor(private router:Router, protected auth:AuthService) { }
  
  loggedin(){
    let token = sessionStorage.getItem("token");
    if(token){
      return true
    }
    else{
      return false
    }
  }
  admin(){
    if(sessionStorage.getItem("role")=="admin"){
      return true
    }
    else{
      return false
    }
  }
  logout(){
    const token = sessionStorage.getItem("token");
    if(token){
      this.auth.logout(token)
      sessionStorage.removeItem("token")
      sessionStorage.removeItem("id")
      sessionStorage.removeItem("role")
      this.router.navigateByUrl("/home")
    }
    else{
      alert("Már ki vagy jelentkezve!")
    }
  }
}
