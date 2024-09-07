import 'package:flutter/material.dart';

Widget dTextHeader({required String text, double size = 25.0}) {
  return SafeArea(
    child: Container(
      margin: const EdgeInsets.only(top: 30, bottom: 30, right: 30, left: 30),
      child: Text(
        text,
        style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
