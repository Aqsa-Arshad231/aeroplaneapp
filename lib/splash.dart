import 'package:flutter/material.dart';
import 'dart:async';

import 'homescreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState;
    Timer(Duration(seconds: 4),() =>
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Homescreen()))
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Image.asset('assest/image.jpg',height: double.infinity,),
    );
  }
}