import 'package:flutter/material.dart';

dContainer({icon, title, child}) {
  return Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 241, 241, 241),
      borderRadius: BorderRadius.circular(15),
    ),
    padding: const EdgeInsets.only(top: 25, bottom: 20, right: 20, left: 20),
    margin: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 30,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
        const SizedBox(height: 5),
        child
      ],
    ),
  );
}
