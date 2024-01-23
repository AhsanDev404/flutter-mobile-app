void main() {
  Bank bank = Bank("ahsan", 123);
  print(bank.name);
}

class Bank {
  String name;
  int balance;

  Bank(this.name, this.balance);
}
