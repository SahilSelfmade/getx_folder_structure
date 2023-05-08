import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  static const String dDMMYYYY = 'dd/MM/yyyy';
  //! Return a string representing [date] formatted according to our locale
  String format([String pattern = dDMMYYYY, String? locale]) {
    if (locale != null && locale.isNotEmpty) {
      initializeDateFormatting(locale);
    }
    return DateFormat(pattern, locale).format(this);
  }
}
