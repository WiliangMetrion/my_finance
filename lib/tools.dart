import 'package:flutter/material.dart';

class Tools {
  static Text descriptiveText({
    required String text,
    double fontSize = 14,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
      ),
    );
  }

  static Text importantText({
    required String text,
    double fontSize = 20,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
