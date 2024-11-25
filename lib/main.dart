import 'package:animation/screens/HeroPage/HeroPageFirst/HeroPageFirst.dart';
import 'package:animation/screens/HeroPage/heroPageSec/heroPageSec.dart';
import 'package:animation/screens/hero/heroPageOne/heroPageOne.dart';
import 'package:animation/screens/homePage/homePage.dart';
import 'package:animation/screens/secoundPage/secoundPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: heroOne(),
    );
  }
}
