final class CartValidationFunction {
  CartValidationFunction._();

  static bool validateDecimalValue(double? value) {
    if (value == null) {
      return false;
    }
    return value >= 0;
  }

  static bool validatePercentageValue(double? value) {
    if (value == null) {
      return false;
    }
    return value >= 0 && value <= 100;
  }
}
