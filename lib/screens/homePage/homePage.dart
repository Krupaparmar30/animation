// List imagesDat = [
//   {
//     'image':
//         "https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg",
//     'name': 'Tiger'
//   },
//   {
//     'image':
//         "https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg",
//     'name': 'Lion'
//   },
//   {
//     'image':
//         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS0IQhVr9DDJCq61QX28zCoiqDrvezBh5ylw&s",
//     'name': 'Cat'
//   },
//   {
//     'image':
//         'https://images.theconversation.com/files/625049/original/file-20241010-15-95v3ha.jpg?ixlib=rb-4.1.0&rect=4%2C12%2C2679%2C1521&q=20&auto=format&w=320&fit=clip&dpr=2&usm=12&cs=strip',
//     'name': 'Dog'
//   },
//   {
//     'image':
//         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZGLRq7TRllKuzYpxrvvCGJRSLHAEXGU81GA&s",
//     'name': 'Horse'
//   },
//   {
//     'image':
//         "https://res.cloudinary.com/enchanting/q_80,f_auto,c_lfill,w_360,h_270,g_auto/exodus-web/2021/12/33808_hero.jpg",
//     'name': 'Bear'
//   },
//   {
//     'image':
//         "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Giraffe_standing.jpg/640px-Giraffe_standing.jpg",
//     'name': 'Jiraf'
//   },
//   {
//     'image':
//         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGO7LkBfwlC4r3e2MuQmGW2fCGnqZ-RhuLLA&s",
//     'name': 'Cheeta'
//   },
//   {
//     'image':
//         "https://static.vecteezy.com/system/resources/previews/026/677/433/non_2x/ai-generated-ai-generative-beautiful-young-tittle-calf-on-sunflower-field-at-sunset-nature-landscape-farm-cow-animal-vibe-graphic-art-photo.jpg",
//     'name': 'Cow'
//   },
//   {
//     'image':
//         "https://i.pinimg.com/736x/4d/f6/a5/4df6a57ebb1521d02c0c9f4726046480.jpg",
//     'name': 'Monkey'
//   },
//   // {'color': Colors.pinkAccent, 'name': 'Pink'},
//   // {'color': Colors.blueGrey, 'name': 'Blue Grey'},
//   // {'color': Colors.teal, 'name': 'Teal'},
//   // {'color': Colors.cyan, 'name': 'Cyan'},
//   // {'color': Colors.black, 'name': 'Black'},
// ];

// import 'package:flutter/material.dart';
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('Fruit Game'),
//       ),
//       body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ...List.generate(6, (index)=>Draggable(
//                 data: fruits[index],
//                 child:Text(fruits[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),feedback: Text(fruits[index],style: TextStyle(fontSize: 20,color: Colors.amber),)),),
//           ],
//
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ...List.generate(6
//                 , (index)=>DragTarget(
//               onAcceptWithDetails: (details){
//                setState((){
//                  if(details.data==targets[index])
//                    {
//                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.green,content: Text('Object Matched SuceessFully !')));
//                    }
//                  else
//                    {
//                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.red,content: Text('Seleted vailed Options !')));
//                    }
//                });
//               },
//               builder: (context,candidateData,rejectedData)=> SizedBox(
//                 height: 120,
//                 width: 150,
//                 child: Image.network(images[index],fit: BoxFit.cover,),
//               ),
//             ))
//           ],
//         ),
//       ],
//       ),
//     );
//   }
// }
// List fruits=['Apple','kiwi','banana','Pineapple','Fig','Guava'];
// List targets=['kiwi','Apple','banana','Fig','Pineapple','Guava'];

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List fruits = ['Lion', 'Cat', 'Dog', 'Horse', 'Bear', 'Monkey'];
  List targets = [
    'Monkey',
    'Cat',
    'Lion',
    'Dog',
    'Bear',
    'Horse',
  ];
  List images = [
    "https://i.pinimg.com/736x/4d/f6/a5/4df6a57ebb1521d02c0c9f4726046480.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS0IQhVr9DDJCq61QX28zCoiqDrvezBh5ylw&s",
    "https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg",
    'https://images.theconversation.com/files/625049/original/file-20241010-15-95v3ha.jpg?ixlib=rb-4.1.0&rect=4%2C12%2C2679%2C1521&q=20&auto=format&w=320&fit=clip&dpr=2&usm=12&cs=strip',
    "https://res.cloudinary.com/enchanting/q_80,f_auto,c_lfill,w_360,h_270,g_auto/exodus-web/2021/12/33808_hero.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZGLRq7TRllKuzYpxrvvCGJRSLHAEXGU81GA&s",


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
        title: Text('Animal Quices',style: TextStyle(
          color: Colors.white
        ),),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              fruits.length,
              (index) => Draggable(
                data: fruits[index],
                child: Text(
                  fruits[index],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                feedback: Material(
                  color: Colors.transparent,
                  child: Text(
                    fruits[index],
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              targets.length,
              (index) => DragTarget(
                onAcceptWithDetails: (details) {
                  setState(() {
                    if (details.data == targets[index]) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.green,
                        content: Text('Matched Successfully!'),
                      ));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text('Selected an Invalid Option!'),
                      ));
                    }
                  });
                },
                builder: (context, candidateData, rejectedData) => SizedBox(
                  height: 120,
                  width: 150,
                  child: Image.network(
                    images[index],
                    fit: BoxFit.cover,
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
