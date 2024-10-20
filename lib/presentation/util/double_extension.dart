extension DoubleExtension on double? {
  String toSingleDecimal() {
    final double = this;
    if ( double == null) return '0.0';
    return double.toStringAsFixed(1);
  }
}
