import 'package:intl/intl.dart';

extension DateTimeUtilStringExtension on String? {
  String getYearFromString() {
    if (this == '') return '';
    final DateTime dateTime = DateTime.parse(this!);
    return dateTime.year.toString();
  }

  String getDate({String toPattern = 'yyyy년 MM월 dd일 HH시'}) {
    if (this == '') return '';
    final DateTime dateTime = DateTime.parse(this!);
    return DateFormat(toPattern).format(dateTime);
  }
}
