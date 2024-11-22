import 'package:animation/screens/HeroPage/HeroPageFirst/HeroPageFirst.dart';
import 'package:animation/utils/list.dart';
import 'package:flutter/material.dart';

class secHeroPage extends StatefulWidget {
  const secHeroPage({super.key});

  @override
  State<secHeroPage> createState() => _secHeroPageState();
}

class _secHeroPageState extends State<secHeroPage> {
  @override
  Widget build(BuildContext context) {
   var data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.yellow.shade900,
          ),
        ),
        backgroundColor: Colors.black,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 23),
            child: Text(
              "Details",
              style: TextStyle(color: Colors.yellow.shade900),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Hero(
            tag: 'photo${data[index]}',
            child: Center(
              child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          spreadRadius: 2,
                          offset: Offset(0, 2),
                          blurRadius: 2)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(data['image']),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
