extension DateTimeUtilStringExtension on String? {
  String getYearFromString() {
    if (this == '') return '';
    final DateTime dateTime = DateTime.parse(this!);
    return dateTime.year.toString();
  }
}
