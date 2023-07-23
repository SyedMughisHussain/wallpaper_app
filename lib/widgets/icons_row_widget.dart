import 'package:flutter/material.dart';

Widget rowICons(Function function) {
  return Container(
      color: const Color.fromARGB(20, 176, 147, 147),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: const Icon(
                Icons.download,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () => function(),
              iconSize: 35,
              icon: const Icon(
                Icons.photo,
                color: Colors.white,
              )),
        ],
      ));
}
