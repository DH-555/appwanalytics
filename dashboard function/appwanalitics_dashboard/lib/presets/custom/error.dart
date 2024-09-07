import 'package:flutter/material.dart';

Widget dError({error, refresh}) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 40, left: 40, bottom: 15),
          child: Column(
            children: [
              const Text(
                  "Ocurrió un error. Compruebe su conexión a internet e inténtelo de nuevo"),
              const SizedBox(height: 5),
              Text("$error"),
            ],
          ),
        ),
        FilledButton(onPressed: refresh, child: const Text("Reintentar"))
      ],
    ),
  );
}
