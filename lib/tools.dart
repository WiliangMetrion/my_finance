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

  static Container roundedContainer({
    required Size screenSize,
    required Widget child,
  }) {
    return Container(
      height: screenSize.height * 0.12,
      width: screenSize.width * 0.9,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 250, 250, 250),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: child,
    );
  }

  static Padding customTextField({
    required TextEditingController controller,
    required String labelText,
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: const OutlineInputBorder(),
        ),
        maxLines: maxLines,
      ),
    );
  }
}
