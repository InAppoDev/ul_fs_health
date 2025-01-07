import 'package:intl/intl.dart';

extension DateExtension on DateTime {
  String get formattedDate => DateFormat('dd.MM.yyyy').format(this);
  String get formattedDateShort => DateFormat('dd.MM').format(this);
  bool get isToday => DateFormat('yyyy.MM.dd').format(DateTime.now()).compareTo(DateFormat('yyyy.MM.dd').format(this)) == 0;
}
