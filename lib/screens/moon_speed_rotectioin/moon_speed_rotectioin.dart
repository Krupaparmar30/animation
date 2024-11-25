import 'package:flutter/material.dart';

class moonSpeedRotatioin extends StatefulWidget {
  const moonSpeedRotatioin({super.key});

  @override
  State<moonSpeedRotatioin> createState() => _moonSpeedRotatioinState();
}

class _moonSpeedRotatioinState extends State<moonSpeedRotatioin>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  int time = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  void init() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: time),
      lowerBound: 0,
      upperBound: 1,
    )..repeat();
  }

  void updateTime(int change) {
    setState(() {
      time = (time + change).clamp(1, 60);
      init();
      print(time);
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: animationController,
            builder: (context, child) {
              return RotationTransition(
                  turns: animationController,
                  child: Image.asset("assets/images/moon.png"));
            },
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey.shade100,
            heroTag: 2,
            onPressed: () {
              updateTime(-1);
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.grey.shade100,
            heroTag: 1,
            onPressed: () {
              updateTime(1);
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
