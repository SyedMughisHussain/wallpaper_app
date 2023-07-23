import 'package:flutter/material.dart';
import 'package:wallify_app/widgets/icons_row_widget.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
// import 'package:wallify_app/screens/home_screen.dart';

class FullScreen extends StatefulWidget {
  final String imageUrl;

  const FullScreen(this.imageUrl, {super.key});

  @override
  State<FullScreen> createState() => _FullScreenState();
}

class _FullScreenState extends State<FullScreen> {
  Future<void> setWallpaper() async {
    int location = WallpaperManager.HOME_SCREEN;
    var file = await DefaultCacheManager().getSingleFile(widget.imageUrl);
    await WallpaperManager.setWallpaperFromFile(file.path, location);
  }

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
        rowICons(setWallpaper),
      ],
    ));
  }
}
