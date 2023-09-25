String? emailValidator(String? emailText) {
  if (emailText == null || emailText.isEmpty) {
    return "Email address is required";
  }

  final emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  if (!emailRegex.hasMatch(emailText)) {
    return "Invalid email address";
  }

  return null; // Return null if the email is valid
}

String? emptyCheckValidator(String? value, {required String errorText}) {
  if (value == null || value.isEmpty) {
    return errorText;
  }
  return null;
}

String? nameValidator(String? nameText) {
  if (nameText == null || nameText.isEmpty) {
    return "Name cannot be empty.";
  }

  if (nameText.length < 3) {
    return "Name must be at least 3 characters long.";
  }

  // Regular expression pattern to match only letters (no numbers or special characters).
  final RegExp namePattern = RegExp(r'^[a-zA-Z]+$');

  if (!namePattern.hasMatch(nameText)) {
    return "Name should contain only letters.";
  }

  // If all conditions pass, return null to indicate a valid name.
  return null;
}

String? passwordValidator(String? passwordText) {
  if (passwordText == null || passwordText.isEmpty) {
    return "Password cannot be empty.";
  }

  if (passwordText.length < 8) {
    return "Password must be at least 8 characters long.";
  }

  // Check if the password is strong (contains at least one uppercase letter, one lowercase letter, and one digit).
  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasDigit = false;

  for (int i = 0; i < passwordText.length; i++) {
    final char = passwordText[i];
    if (char.toUpperCase() != char) {
      hasLowercase = true;
    }
    if (char.toUpperCase() == char) {
      hasUppercase = true;
    }
    if ('0123456789'.contains(char)) {
      hasDigit = true;
    }
  }

  if (!hasUppercase || !hasLowercase || !hasDigit) {
    return "Password should be strong (contain at least one uppercase letter, one lowercase letter, and one digit).";
  }

  // If all conditions pass, return null to indicate a valid password.
  return null;
}

String? confirmPasswordValidator(
    String? confirmPasswordText, String passwordText) {
  if (confirmPasswordText != passwordText) {
    return 'Both passwords are not same';
  }

  return null;
}
