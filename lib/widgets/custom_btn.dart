import 'package:flutter/material.dart';

Widget customButtton(Function function, String text) {
  return InkWell(
    onTap: () => function(),
    child: Container(
      alignment: Alignment.center,
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
