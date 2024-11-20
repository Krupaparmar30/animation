import 'package:flutter/material.dart';

class secPage extends StatefulWidget {
  const secPage({super.key});

  @override
  State<secPage> createState() => _secPageState();
}

class _secPageState extends State<secPage> {
  bool isPlan = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu, color: isPlan ? Colors.white : Colors.white),
        backgroundColor: isPlan ? Colors.blue.shade900 : Colors.grey[900],
        title: Text(
          'Animated Container',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedAlign(
              alignment: isPlan ? Alignment.topCenter : Alignment.bottomCenter,
              duration: Duration(seconds: 2),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      isPlan = !isPlan;
                    });
                  },
                  icon: Icon(Icons.airplanemode_active_outlined)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isPlan = !isPlan;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isPlan ? Colors.blue.shade900 : Colors.grey[900],
                ),
                child: Text(
                  isPlan ? 'Successful Tack Off!' : 'Successful lending',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
