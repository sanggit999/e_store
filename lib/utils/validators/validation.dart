class MyValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email không được để trống.";
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return "Email không hợp lệ.";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Mật khẩu không được để trống.";
    }

    if (value.length < 6) {
      return "Mật khẩu phải dài ít nhất 6 ký tự.";
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Mật khẩu phải chứa ít nhất một chữ cái viết hoa.";
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Mật khẩu phải chứa ít nhất một số.";
    }

    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "Mật khẩu phải chứa ít nhất một ký tự đặc biệt.";
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Số điện thoại không được để trống.";
    }

    final phoneRegExp = RegExp(r'^\d{10}$');
    if (!phoneRegExp.hasMatch(value)) {
      return "Số điện thoại không hợp lệ (yêu cầu 10 chữ số).";
    }
    return null;
  }
}
