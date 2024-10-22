extension IntExtension on int {
  String toHoursAndMinutes() {
    final hours = this ~/ 60;
    final minutes = this % 60;
    return '$hours시간 $minutes분';
  }
}
