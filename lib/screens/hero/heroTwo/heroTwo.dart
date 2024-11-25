import 'package:flutter/material.dart';

class heroTwo extends StatefulWidget {
  const heroTwo({super.key});

  @override
  State<heroTwo> createState() => _heroTwoState();
}

class _heroTwoState extends State<heroTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Details Sinchen"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(
              tag: 'photo',
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/s.png'),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "Sinchan",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 32),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "* Plot : The series follows the adventures of Shinnosuke Shin Nohara, a five-year-old boy, and his family in the Japanese city of Kasukabe.",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "* Characters : Shin-chan's friends include Kazama, Masao, Nani, and Bochan. He also has a younger sister named Himamari and a pet dog named Shiro.",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "* Style : The show is mainly a comedy with a lot of sexual innuendo, but its also family-friendly.",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "* Name : Shin-chan's full name is Shinnosuke, which is pronounced Shinnoskay. Shin is Japanese for heart and chan is Japanese for child",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
