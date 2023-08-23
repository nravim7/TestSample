import { Component } from '@angular/core';


@Component({
  selector: 'app-welcome',
  templateUrl: './welcome.component.html',
  styleUrls: ['./welcome.component.css']
})
export class WelcomeComponent {
  apiService: any;
  router: any;
 

  displayBalance() {
    // Call the backend API to fetch and display the account balance
    this.apiService.getBalance().subscribe(
      (balance: number) => {
        console.log('Account Balance:', balance);
      },
      (error: any) => {
        console.error('Error fetching balance:', error);
      }
    );
  }

  transferAmount() {
    // Call the backend API to transfer an amount
    this.apiService.transferAmount().subscribe(
      () => {
        console.log('Amount transferred successfully');
      },
      (error: any) => {
        console.error('Error transferring amount:', error);
      }
    );
  }

  deleteAccount() {
    // Call the backend API to delete the account
    this.apiService.deleteAccount().subscribe(
      () => {
        console.log('Account deleted successfully');
        // Optionally navigate to another page upon successful deletion
        this.router.navigate(['/home']);
      },
      (error: any) => {
        console.error('Error deleting account:', error);
      }
    );
  }

  updateAccount() {
    // Call the backend API to update the account details
    this.apiService.updateAccount().subscribe(
      () => {
        console.log('Account updated successfully');
      },
      (error: any) => {
        console.error('Error updating account:', error);
      }
    );
  }
}

