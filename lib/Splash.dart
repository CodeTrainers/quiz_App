import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:newproj/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
            () => Navigator.of(context).pushReplacement(goHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white30,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.cyan,
          child: Icon(MdiIcons.progressClock, color: Colors.white, size: 50,),
        ),

    );
  }

  Route goHome() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const MyHomePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return child;
        });
  }
}
