import 'package:flutter/material.dart';

Widget viewmore({required String S}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextButton(
      onPressed: () {},
      child: Text(
        S,
        style: TextStyle(
            color: Colors.green[700],
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
    ),
  );
}
