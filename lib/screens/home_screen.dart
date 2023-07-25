import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wallify_app/screens/full_screen.dart';
import '../widgets/custom_btn.dart';
import '../widgets/icons_row_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List images = [];
bool isloading = false;
int page = 1;

class _HomeState extends State<Home> {
  String apiKey = 'tWnbVMqugoTWLZwrPdPT8ptdwkN6wUNdY0XsBUgVVFChmk0XycnQ1Ow9';
  getWallpapers() async {
    const url = 'https://api.pexels.com/v1/curated?per_page=80';
    await http
        .get(Uri.parse(url), headers: {"Authorization": apiKey}).then((value) {
      Map result = jsonDecode(value.body);
      setState(() {
        images = result['photos'];
      });
    });
  }

  loadMoreWallpaper() async {
    setState(() {
      page = page + 1;
    });
    String url = 'https://api.pexels.com/v1/curated?per_page=80&page=$page';
    await http
        .get(Uri.parse(url), headers: {'Authorization': apiKey}).then((value) {
      Map result = jsonDecode(value.body);
      setState(() {
        images.addAll(result['photos']);
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
    return RefreshIndicator(
      onRefresh: () => loadMoreWallpaper(),
      displacement: 100,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Wallify',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
              color: Colors.black,
            ),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 2 / 3,
                  ),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FullScreen(images[index]['src']['large2x']),
                        )),
                    child: Image.network(
                      images[index]['src']['medium'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              customButtton(loadMoreWallpaper, 'Load More Wallpaper'),
            ],
          ),
        ),
      ),
    );
  }
}
