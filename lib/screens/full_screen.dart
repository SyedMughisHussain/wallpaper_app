import 'package:flutter/material.dart';
// import 'package:wallify_app/screens/home_screen.dart';

class FullScreen extends StatefulWidget {
  final String imageUrl;

  const FullScreen(this.imageUrl, {super.key});

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        Expanded(
          child: Image.network(
            widget.imageUrl,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Row(
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
//Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
//children: [
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
                onPressed: () {},
                icon: const Icon(
                  Icons.download,
                  color: Colors.white,
                )),
            // const Text(
            //   'Save',
            //   style: TextStyle(color: Colors.white, fontSize: 12),
            // )
          ],
        )
      ],
    ));
  }
}
