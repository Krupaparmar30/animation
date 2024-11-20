import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    String? selectedColor;
    String selectedColorName = '';
    List imagesDat = [
      {
        'image':
            "data:image/jpeg;base64,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",
        'name': 'Tiger'
      },
      {
        'image':
            "https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg",
        'name': 'Lion'
      },
      {
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS0IQhVr9DDJCq61QX28zCoiqDrvezBh5ylw&s",
        'name': 'Cat'
      },
      {
        'image':
            'https://images.theconversation.com/files/625049/original/file-20241010-15-95v3ha.jpg?ixlib=rb-4.1.0&rect=4%2C12%2C2679%2C1521&q=20&auto=format&w=320&fit=clip&dpr=2&usm=12&cs=strip',
        'name': 'Dog'
      },
      {
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZGLRq7TRllKuzYpxrvvCGJRSLHAEXGU81GA&s",
        'name': 'Horse'
      },
      {
        'image':
            "https://res.cloudinary.com/enchanting/q_80,f_auto,c_lfill,w_360,h_270,g_auto/exodus-web/2021/12/33808_hero.jpg",
        'name': 'Bear'
      },
      {
        'image':
            "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Giraffe_standing.jpg/640px-Giraffe_standing.jpg",
        'name': 'Jiraf'
      },
      {
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGO7LkBfwlC4r3e2MuQmGW2fCGnqZ-RhuLLA&s",
        'name': 'Cheeta'
      },
      {
        'image':
            "https://static.vecteezy.com/system/resources/previews/026/677/433/non_2x/ai-generated-ai-generative-beautiful-young-tittle-calf-on-sunflower-field-at-sunset-nature-landscape-farm-cow-animal-vibe-graphic-art-photo.jpg",
        'name': 'Cow'
      },
      {
        'image':
            "https://i.pinimg.com/736x/4d/f6/a5/4df6a57ebb1521d02c0c9f4726046480.jpg",
        'name': 'Monkey'
      },
      // {'color': Colors.pinkAccent, 'name': 'Pink'},
      // {'color': Colors.blueGrey, 'name': 'Blue Grey'},
      // {'color': Colors.teal, 'name': 'Teal'},
      // {'color': Colors.cyan, 'name': 'Cyan'},
      // {'color': Colors.black, 'name': 'Black'},
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Drag & Drop',
          style: TextStyle(color: Colors.white),
        ),
      ),   backgroundColor: Colors.black,

    body: Column(
      children: [
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 300,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: imagesDat.length,
              itemBuilder: (context, index) {
                return Draggable<String>(
                  data: imagesDat[index]['image'],
                  feedback: Container(
                    height: 200,
                    width: 200,

                    decoration: BoxDecoration(
                      image:DecorationImage(image: NetworkImage(imagesDat[index]['image'])),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Container(

                      decoration: BoxDecoration(

                        image:DecorationImage(image: NetworkImage(imagesDat[index]['image'])),
                        borderRadius: BorderRadius.circular(10),
                      ),


                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 100),
        DragTarget<String>(
          onAcceptWithDetails: (image) {
            setState(() {
              selectedColor = imagesDat as String?;
              selectedColorName = imagesDat.firstWhere(
                      (element) => element['image'] == image,
                  orElse: () => {'image': Colors.transparent, 'name': ''})['name']!;
            });
          },
          builder: (context, candidateData, rejectedData) {

             return  Container(
                height: 200,
                width: 200,

               decoration: BoxDecoration(
                 image:DecorationImage(image:NetworkImage(selectedColor?? "https://static.vecteezy.com/system/resources/previews/026/677/433/non_2x/ai-generated-ai-generative-beautiful-young-tittle-calf-on-sunflower-field-at-sunset-nature-landscape-farm-cow-animal-vibe-graphic-art-photo.jpg",
                 )),
               ),
               );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            selectedColorName,
            // style: TextStyle(
            //   fontSize: 40,
            //   fontWeight: FontWeight.bold,
            //   color: selectedColorName??,
            // ),
          ),
        ),
      ],
    ),
    );
  }
}
