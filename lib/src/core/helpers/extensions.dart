extension ValidatorExtension on String {
  bool get isValidPhone {
    final phoneRegEgy = RegExp(r'^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$');
    final phoneRegKSA =
        RegExp(r'^(009665|9665|\+9665|05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$');
    return phoneRegEgy.hasMatch(this) || phoneRegKSA.hasMatch(this);
  }

  bool get isEgyptianPhone {
    final phoneRegEgy = RegExp(r'^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$');
    return phoneRegEgy.hasMatch(this);
  }

  bool get isSaudiPhone {
    final phoneRegKSA =
        RegExp(r'^(009665|9665|\+9665|05|5)(5|0|3|6|4|9|1|8|7)([0-9]{7})$');
    return phoneRegKSA.hasMatch(this);
  }
}
