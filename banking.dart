import 'dart:io';

class BankAccount {
  final int? _accountID;
  final String? _accountUser;
  double _balance = 1000;

  BankAccount(this._accountID, this._accountUser);

  int get accountID => _accountID!;

  String get accountUser => _accountUser!;

  double get balance => _balance;

  set balance(double n) {
    _balance += n;
  }

  Future<bool> withdraw(double amount) async {
    print("fetching balance and checking...");
    bool validate = await checkBalance(amount);
    if (validate) {
      _balance += (-1 * amount);
      print("$amount is withdrawn successfully!");
    } else {
      print("Insufficient Funds!");
    }
    return validate;
  }

  bool deposit(double amount) {
    bool validate = true;
    print("fetching account details...");
    _balance += amount;
    return validate;
  }

  void getBalance() {
    print("Current Account Balance : $balance");
  }

  Future<bool> checkBalance(double amount) {
    return Future.delayed(
        Duration(seconds: 5), () => (balance >= amount) ? true : false);
  }

  Future<bool> transferFund(BankAccount usr, double amount) async {
    bool transactionDone = false;
    if (await this.checkBalance(amount)) {
      await this.withdraw(amount);
      usr.deposit(amount);
      print("amount transfered : $amount, reciever name: ${usr.accountUser}");
      transactionDone = true;
    } else {
      print("Insufficient Funds!");
    }
    return transactionDone;
  }
}

void main() async {
  BankAccount usr1 = BankAccount(101, "Aman Kumar");
  BankAccount usr2 = BankAccount(102, "Vikram Singh");

  // usr1.getBalance();

  // if (await usr1.withdraw(400)) {
  //   stdout.write("Balance After Withdrawing 400 : ");
  //   usr1.getBalance();
  // }

  // if (await usr1.deposit(400)) {
  //   stdout.write("Balance After Depositing 400 : ");
  //   usr1.getBalance();
  // }

  stdout.write("Account balance of ${usr1.accountUser} initially : ");
  usr2.getBalance();

  if (await usr1.transferFund(usr2, 400)) {
    stdout.write("Balance of ${usr1.accountUser} : ");
    usr1.getBalance();
    stdout.write("Balance of ${usr2.accountUser} : ");
    usr2.getBalance();
  }
}
