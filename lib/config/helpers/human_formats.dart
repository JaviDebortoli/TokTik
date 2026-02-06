import 'package:intl/intl.dart';

class HumanFormats {
  static String humanReadableNumber (double number) {
    if (number == 0) {
      return '';
    }
    
    return NumberFormat.compactCurrency(
      decimalDigits: 0, 
      symbol: '', 
    ).format(number);
  }
}