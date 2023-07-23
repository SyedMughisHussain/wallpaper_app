import 'package:flutter/material.dart';

Widget rowICons(Function function) {
  return Container(
      color: Colors.black54,
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.download,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () => function,
              icon: const Icon(
                Icons.photo,
                color: Colors.white,
              )),
        ],
      ));
}
