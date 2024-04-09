import { Component } from '@angular/core';
import { AdminService } from '../../services/admin.service';

@Component({
  selector: 'app-users',
  templateUrl: './users.component.html',
  styleUrl: './users.component.css'
})
export class UsersComponent {
  constructor(private adm: AdminService) { }

  users: any[] = [];
  id: any;
  email: any;
  name: any;
  birthdate: Date = new Date();

  isValidEmail(email: string): boolean {
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
  }

  isFormValid(): boolean {
    const isNameValid = !!this.name;
    const isEmailValid = this.isValidEmail(this.email);
    const isBirthdateValid = !!this.birthdate;

    return isNameValid && isEmailValid && isBirthdateValid;
  }

  ngOnInit() {
    this.getUsers();
  }

  getUsers() {
    this.adm.getUsers().subscribe((res: any) => {
      if (res.success) {
        this.users = res.data;
      } else {
        console.error("Hiba van a lekérésben: ", res.message);
      }
    });
  }

  deleteUser(userId: number) {
    this.adm.deleteUser(userId).subscribe(() => {
      this.getUsers();
    });
  }

  updateUser() {
    this.adm.updateUser(this.id, this.birthdate, this.name, this.email).subscribe((res: any) => {
      if (res) {
        this.showUpdateMessage();
        this.getUsers();
      } else {
        console.error('Hiba van a profil frissítése közben: ', res.message);
      }
    });
  }

  showUpdateMessage() {
    let message = "A profil sikeresen frissítve!";
  }

  updateUserData(user: any) {
    this.id = user.id;
    this.name = user.name;
    this.email = user.email;
    this.birthdate = user.birthdate;
  }
}