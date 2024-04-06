import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration inputDecotation({
    required String hintext,
    required String labeltext,
    required Icon icon,
  }) {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.green.shade900),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.green.shade900,
        ),
      ),
      hintText: hintext,
      labelText: labeltext,
      labelStyle: TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.green.shade900,
      ),
      prefixIcon: Icon(
        icon.icon,
        color: Colors.green.shade700,
      ),
      hintStyle: TextStyle(
        color: Colors.grey[400],
      ),
    );
  }
}
