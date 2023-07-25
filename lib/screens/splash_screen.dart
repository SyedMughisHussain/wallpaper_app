import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallify_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/Image-splash.jpeg',
                ),
                fit: BoxFit.cover)),
        child: const Column(
          children: [
            SizedBox(
              height: 400,
            ),
            Text(
              'Welcome To',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Wallify',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(138, 255, 128, 1),
                  fontSize: 40),
            ),
            SizedBox(
              height: 250,
            ),
            Text(
              'Find Wallpapers of your choice',
              style: TextStyle(
                color: Color.fromRGBO(138, 255, 128, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
