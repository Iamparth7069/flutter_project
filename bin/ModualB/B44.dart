abstract class Bank {
  double getBalance();
}

class BankA extends Bank {
  double balance = 100;

  double getBalance() {
    return balance;
  }
}

class BankB extends Bank {
  double balance = 150;

  double getBalance() {
    return balance;
  }
}

class BankC extends Bank {
  double balance = 200;

  double getBalance() {
    return balance;
  }
}

void main() {
  BankA bankA = BankA();
  BankB bankB = BankB();
  BankC bankC = BankC();

  print('Balance in BankA: ${bankA.getBalance()}');
  print('Balance in BankB: ${bankB.getBalance()}');
  print('Balance in BankC: ${bankC.getBalance()}');
}