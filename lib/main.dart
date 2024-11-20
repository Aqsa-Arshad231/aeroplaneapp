
import 'package:flutter/material.dart';
import 'package:untiled3/ProfileScreen.dart';
import 'package:untiled3/RentScreen.dart';
import 'package:untiled3/homescreen.dart';
import 'package:untiled3/loginscreen.dart';
import 'package:untiled3/signup.dart';
import 'package:untiled3/splash.dart';

import 'databasehelper.dart';
void main() {
 runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override


  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}