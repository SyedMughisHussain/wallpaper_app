import 'package:flutter/material.dart';

Widget pictureGridView() {
  return Column(children: [
    Expanded(
        child: Container(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        itemCount: 50,
        itemBuilder: (context, index) => GridTile(
            footer: IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            child: Container()),
      ),
    ))
  ]);
}
