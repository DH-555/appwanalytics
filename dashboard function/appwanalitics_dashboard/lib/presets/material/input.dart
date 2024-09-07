import 'package:flutter/material.dart';

Widget dInput(
    {required label,
    TextEditingController? controller,
    bool obscureText = false}) {
  return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(label),
      ));
}
