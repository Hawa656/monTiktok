import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tikodc/accueil.dart';
import 'package:tikodc/inscription.dart';
import 'package:tikodc/main.dart';
import 'accueil.dart';
import 'package:url_launcher/url_launcher.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(Duration(seconds: 3), () {
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: (context) => Inscription()));
    // });
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Accueil()));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color(0xFF141518),
      body: Center(
        child: (Image.asset(
          'assets/images/logoT.png',
          height: 200,
          width: 200,
        )),
      ),
    );
  }
}
