class RzValidation {
  // prevents instantiation
  const RzValidation._();

  static String? validateEmptyText(String? fieldName, String? value) {
    if(value == null || value.isEmpty) {
      return "$fieldName is required.";
    }
    return null;
  }
  static String? validateUsername(String? value) {
    if(value == null || value.isEmpty) {
      return "Username is required.";
    }
    const pattern = r"^[a-zA-Z0-9_-]{3,20}$";
    final regex = RegExp(pattern);
    bool isValid = regex.hasMatch(value);
    if(isValid) {
      isValid = !value.startsWith("_") && !value.startsWith("-") && !value.endsWith("_") && !value.endsWith("-");
    }
    if(!isValid) {
      return "Username is not valid.";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if(value == null || value.isEmpty) {
      return "Email is required.";
    }
    const pattern = r"^[\w-.]+@[\w-]+\.)+[\w-]{2,4}$";
    final regex = RegExp(pattern);
    if(!regex.hasMatch(value)) {
      return "Invalid email address.";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if(value == null || value.isEmpty) {
      return "Password is required.";
    }
    if(value.length < 6) {
      return "Password must be at least 6 characters long.";
    }
    if(!value.contains(RegExp(r"[A-Z]"))) {
      return "Password must contain at least one uppercase letter.";
    }
    return null;
  }
}