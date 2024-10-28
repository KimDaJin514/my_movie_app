import 'package:flutter/material.dart';
import 'package:my_movie_app/presentation/style/colors.dart';

Widget scrollUpFloatingButton({
  required Function() onPressed,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: black.withOpacity(0.1),
            blurRadius: 40,
          ),
        ],
      ),
      child: FloatingActionButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF0F0F0)),
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: white,
        splashColor: white,
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        child: const Icon(
          Icons.arrow_upward_outlined,
          size: 23,
          color: gray800,
        ),
      ),
    ),
  );
}
