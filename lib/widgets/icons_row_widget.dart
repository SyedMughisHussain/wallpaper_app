import 'package:flutter/material.dart';

Widget rowICons(Function function, String buttontext) {
  return Container(
    alignment: Alignment.center,
    child: ElevatedButton.icon(
      onPressed: () => function(),
      icon: const Icon(Icons.photo),
      label: Text(buttontext),
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 227, 168, 238),
          foregroundColor: Colors.white,
          alignment: Alignment.center),
    ),
  );
  //width: double.infinity,
}
