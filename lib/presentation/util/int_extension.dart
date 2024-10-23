extension IntExtension on int {
  String toHoursAndMinutes() {
    if (this < 60) {
      return '$this분';
    }
    final hours = this ~/ 60;
    final minutes = this % 60;
    return '$hours시간 $minutes분';
  }
}
