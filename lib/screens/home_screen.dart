import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List photo = [];

class _HomeState extends State<Home> {
  String apiKey = 'tWnbVMqugoTWLZwrPdPT8ptdwkN6wUNdY0XsBUgVVFChmk0XycnQ1Ow9';
  getWallpapers() async {
    const url = 'https://api.pexels.com/v1/curated?per_page=80';
    await http
        .get(Uri.parse(url), headers: {"Authorization": apiKey}).then((value) {
      Map result = jsonDecode(value.body);
      setState(() {
        photo = result['photos'];
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getWallpapers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Wallify',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
            color: Colors.white,
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      body: GridView.builder(
          itemCount: photo.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2 / 3,
          ),
          itemBuilder: (context, index) => Container(
                child: Image.network(
                  photo[index]['src']['tiny'],
                  fit: BoxFit.cover,
                ),
              )),
    );
  }
}
