import 'package:intl/intl.dart';

class DtUtils {
  static String getDayOfWeek(DateTime date) => DateFormat('EEE').format(date);

  static String getDayOfMonth(DateTime date) => DateFormat('dd').format(date);

  static String getMonth(DateTime date) => DateFormat('MMM').format(date);
}
