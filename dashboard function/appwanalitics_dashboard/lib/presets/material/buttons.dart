import 'package:flutter/material.dart';

Widget dFilledbutton(
    {required String text, required onPressed, bool active = true}) {
  if (active) {
    return FilledButton(onPressed: onPressed, child: Text(text));
  } else {
    return FilledButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: Colors.white)),
        style: FilledButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 86, 86, 86)));
  }
}
