class BankAccount {
  double _balance;

  BankAccount(this._balance);

  // Getter chỉ cho phép đọc số dư
  double get balance => _balance;

  // Phương thức nạp tiền
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }
}
