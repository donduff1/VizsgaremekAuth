import { Component } from '@angular/core';
import { BaseService } from '../../services/base.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent {
  name!: string;
  email!: string;
  birthdate!: Date;

  constructor(private userHandling: BaseService, private router: Router) { }
  ngOnInit() {
    this.getData();
  }

  updateProfile() {
    this.userHandling.updateProfile(this.birthdate,this.name,this.email).subscribe((res: any) => {
      if (res) {
        this.showUpdateMessage()
        this.getData()
      }
      else {
        console.error('A profil frissítése sikertelen: ',res.message);
      }
    }
    );
  }
  getData(){
    const id = sessionStorage.getItem("id")
    this.userHandling.getUserData(id).subscribe((userData: any) => {
      this.name = userData.data.name
      this.email = userData.data.email
      this.birthdate = userData.data.birthdate
    });
  }

  showUpdateMessage() {
    let message = "Profil sikeresen frissítve!"
  }
  showDeleteMessage() {
    let message = "Profil sikeresen törölve!"
  }
  deleteUser(){
    const id = sessionStorage.getItem("id")
    this.userHandling.deleteUser(id).subscribe((res:any)=>{
      if(res.success){
        console.log(res)
        sessionStorage.removeItem("token")
        sessionStorage.removeItem("id")
        this.router.navigateByUrl("/home")
        this.showDeleteMessage()
      }
    })
  }
}