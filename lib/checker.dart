class checker {
  bool hasUpperCase(String text) {
    return text.contains(RegExp(r'[A-Z]'));
  }

  bool hasLowercase(String text) {
    return text.contains(RegExp(r'[a-z]'));
  }

  bool hasNumbers(String text) {
    return text.contains(RegExp(r'\d'));
  }
  bool hasSpecialCharacters(String text) {
    return text.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'));
  }

}
