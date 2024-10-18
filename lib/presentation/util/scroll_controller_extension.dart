import 'package:flutter/material.dart';

extension ScrollControllerExtensions on ScrollController {
  void onScrollEndsListener(
    final void Function() callback, {
    double offset = 0,
  }) {
    addListener(() {
      if (isScrollEnd(offset: offset)) {
        callback();
      }
    });
  }

  bool isScrollEnd({double offset = 0}) =>
      position.pixels + offset >= position.maxScrollExtent;
}
