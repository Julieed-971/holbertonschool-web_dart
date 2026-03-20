class Password {
  String _password = "";

  Password({required password}) {
    this._password = password;
  }

  String get password {
    return _password;
  }

  void set password(String password) {
    this._password = password;
  }

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }
    if (!_password.contains(RegExp(r'[A-Z]')) 
        || !_password.contains(RegExp(r'[a-z]'))
        || !_password.contains(RegExp(r'\d+'))
        ) {
          return false;
        }
    return true;
  }

  String toString() {
    return ('Your Password is: $_password');
  }
}
