import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration inputDecotation({
    required String hintext,
    required String labeltext,
    required Icon icon,
  }) {
    return InputDecoration(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: Colors.green.shade900),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      hintText: hintext,
      labelText: labeltext,
      labelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.grey,
      ),
      prefixIcon: Icon(
        icon.icon,
        color: Colors.grey,
      ),
      hintStyle: TextStyle(
        color: Colors.grey[400],
      ),
    );
  }
}
