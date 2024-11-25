import 'package:animation/screens/hero/heroTwo/heroTwo.dart';
import 'package:flutter/material.dart';

class heroOne extends StatefulWidget {
  const heroOne({super.key});

  @override
  State<heroOne> createState() => _heroOneState();
}

class _heroOneState extends State<heroOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: 'photo',
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => heroTwo(),
                ));
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, top: 20),
                  child: Container(
                    width: 300,
                    height: 350,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                            spreadRadius: 3)
                      ],
                      image: DecorationImage(
                          image: AssetImage('assets/images/s.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
