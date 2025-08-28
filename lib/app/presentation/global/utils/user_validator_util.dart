// ignore_for_file: constant_identifier_names

const int LENTGH_PHONE = 10;

abstract class UserValidator {
  UserValidator._();

  /// Verifica si esta vacio el valor
  static String? isEmpty(String? value, String emptyText) {
    if (value == null || value.isEmpty) {
      return emptyText;
    } else {
      return null;
    }
  }

  /// Verifica si es un telefono valido
  static String? isPhone(
    String? value,
    String emptyText,
    String validPhone,
    String numericPhone,
  ) {
    if (value == null) {
      return emptyText;
    } else if (value.isEmpty) {
      return emptyText;
    }

    try {
      if (value.length < LENTGH_PHONE) {
        return validPhone;
      }

      return null;
    } catch (_) {
      return numericPhone;
    }
  }
}
