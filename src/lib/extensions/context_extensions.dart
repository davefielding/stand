import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  void showSnackMessage(String message) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
  }
}
