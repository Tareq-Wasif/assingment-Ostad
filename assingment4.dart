abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited: \$${amount.toStringAsFixed(2)}, New Balance: \$${balance.toStringAsFixed(2)}');
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      balance += balance * interestRate;
      print('Withdrawn: \$${amount.toStringAsFixed(2)}, New Balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Insufficient funds ');
    }
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print('Withdrawn: \$${amount.toStringAsFixed(2)}, New Balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Insufficient funds ');
    }
  }
}

void main() {
  var savingsAccount = SavingsAccount(1001, 1000.0, 0.05);
  print("Saving Account");
  savingsAccount.deposit(500.0);
  savingsAccount.withdraw(200.0);

  var currentAccount = CurrentAccount(2001, 2000.0, 1000.0);
  print("\n Courrent Account");
  currentAccount.deposit(800.0);
  currentAccount.withdraw(3000.0);
}
