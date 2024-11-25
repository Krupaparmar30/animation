import 'package:animation/screens/HeroPage/heroPageSec/heroPageSec.dart';
import 'package:animation/utils/list.dart';
import 'package:flutter/material.dart';

class HeroPageFirst extends StatefulWidget {
  const HeroPageFirst({super.key});

  @override
  State<HeroPageFirst> createState() => _HeroPageFirstState();
}

class _HeroPageFirstState extends State<HeroPageFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            color: Colors.yellow.shade900,
          ),
          backgroundColor: Colors.black,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 23),
              child: Text(
                "Royal Hub",
                style: TextStyle(color: Colors.yellow.shade900),
              ),
            ),
          ),
        ),
        body: SizedBox(
          height: 700,
          child: GridView.builder(
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 8),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selIndex = index;
                      });
                      // Navigator.of(context)
                      //     .pushNamed('/details', arguments: jewList[index]);
                      Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>  secHeroPage(index: selIndex,),)
                          );
                      //  Navigator.of(context).pushNamed('/details');
                    },
                    child: Hero(
                      tag: index,
                      child: Container(
                        height: 700,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                spreadRadius: 2,
                                offset: Offset(0, 2),
                                blurRadius: 2)
                          ],
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(jewList[index]['image']),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              jewList[index]['name'],
                              style: TextStyle(
                                  color: Colors.yellow.shade900,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Price : \$200",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}

int selIndex = 0;
