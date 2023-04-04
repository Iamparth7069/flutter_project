class Customer {
  String name;
  int age;

  Customer(this.name, this.age);

  void displayDetails() {
    print('Name: $name');
    print('Age: $age');
  }
}

class Account {
  int accountNumber;
  double balance;
  Customer customer;

  Account(this.accountNumber, this.balance, this.customer);

  void displayDetails() {
    print('Account Number: $accountNumber');
    print('Balance: $balance');
    print('Customer Details:');
    customer.displayDetails();
  }

  void deposit(double amount) {
    balance += amount;
    print('Deposit successful. New balance: $balance');
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('Withdrawal successful. New balance: $balance');
    } else {
      print('Insufficient balance');
    }
  }
}

class RBI {
  double minimumInterestRate;
  double minimumBalance;
  double maximumWithdrawalLimit;

  RBI(this.minimumInterestRate, this.minimumBalance, this.maximumWithdrawalLimit);

  void displayDetails() {
    print('Minimum Interest Rate: $minimumInterestRate');
    print('Minimum Balance: $minimumBalance');
    print('Maximum Withdrawal Limit: $maximumWithdrawalLimit');
  }

  void setMinimumInterestRate(double rate) {
    minimumInterestRate = rate;
  }

  void setMinimumBalance(double balance) {
    minimumBalance = balance;
  }

  void setMaximumWithdrawalLimit(double limit) {
    maximumWithdrawalLimit = limit;
  }

  double calculateInterest(double balance) {
    return balance * minimumInterestRate / 100;
  }
}

class SBI extends RBI {
  SBI() : super(4, 1000, 50000);
}

class ICICI extends RBI {
  ICICI() : super(3.5, 5000, 75000);
}

class PNB extends RBI {
  PNB() : super(3, 2000, 25000);
}

void main() {
  Customer customer = Customer('John Doe', 35);
  Account account = Account(123456789, 5000, customer);

  // Display account details
  account.displayDetails();

  // Deposit some amount
  account.deposit(2500);

  // Withdraw some amount
  account.withdraw(3000);

  // Display updated account details
  account.displayDetails();

  // Create SBI, ICICI, and PNB objects
  SBI sbi = SBI();
  ICICI icici = ICICI();
  PNB pnb = PNB();

  // Display RBI details for each bank
  sbi.displayDetails();
  icici.displayDetails();
  pnb.displayDetails();

  // Demonstrate dynamic polymorphism
  RBI bank = sbi;
  print('Interest for SBI bank account with balance 10000: ${bank.calculateInterest(10000)}');

  bank = icici;
  print('Interest for ICICI bank account with balance 10000: ${bank.calculateInterest(10000)}');

  bank = pnb;
  print('Interest for PNB bank account with balance 10000: ${bank.calculateInterest(10000)}');
}