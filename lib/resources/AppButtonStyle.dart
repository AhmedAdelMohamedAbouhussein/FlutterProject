import 'package:flutter/material.dart';

class AppButtonStyle extends StatelessWidget {
  const AppButtonStyle._();

  static final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF1877F2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4), // 2% rounded edge
    ),
  );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
