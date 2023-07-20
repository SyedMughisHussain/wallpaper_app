import 'package:flutter/material.dart';

Widget pictureGridView() {
  String imageUrl =
      'https://static.javatpoint.com/tutorial/flutter/images/flutter-gridview2.png';
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5),
    itemCount: 50,
    itemBuilder: (context, index) => GridTile(
      footer:
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
      child: Image.network(
        'https:static.javatpoint.com/tutorial/flutter/images/flutter-gridview2.png',
        //imageUrl[index],
        fit: BoxFit.cover,
      ),
    ),
  );
}
