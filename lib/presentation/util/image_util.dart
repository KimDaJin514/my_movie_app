import 'package:flutter/material.dart';

extension ImageUtilNumExtension on num {
  int cacheSize(BuildContext context) {
    return (this * MediaQuery.of(context).devicePixelRatio).round();
  }
}
