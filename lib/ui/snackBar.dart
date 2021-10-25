import 'package:flutter/material.dart';

class GlobalSnackBar {
  static show(
    BuildContext context, {
    required String message,
    required Widget labelContent,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 0.0,
        behavior: SnackBarBehavior.floating,
        content: labelContent,
        width: 280.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 10, // Inner padding for SnackBar content.
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        //backgroundColor: accentColor,
        // action: SnackBarAction(
        //   textColor: Color(0xFFFAF2FB),
        //   label: 'OK',
        //   onPressed: () {},
        // ),
      ),
    );
  }
}
