import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetPage extends StatelessWidget {

  List<PhotoTheCapital> capitals = [
    PhotoTheCapital(
        image: 'https://www.shutterstock.com/image-photo/aerial-view-motherland-statue-kiev-260nw-1914789118.jpg',
        text: 'Im from Ukraine, The capital of our country is Kyiv, It is a very beatiful city, especially in spring when the chestnut trees are in blossom, Kyiv is a large political, industrial, scientific and cultural centre, Its population is above 2 mln people, Kyiv is situated on the Dnieper, the longest river in Ukraine,The capital of Ukraine is one of the oldest cities in Europe,',
    ),
    PhotoTheCapital(
        image:'https://images.pexels.com/photos/39003/scotland-united-kingdom-england-isle-of-skye-39003.jpeg?cs=srgb&dl=pexels-pixabay-39003.jpg&fm=jpg',
        text: 'Scotland is a country in Great Britain, to the north of England. Scotland has nearly 800 islands, but people only live on some of them, Scotland is a very beautiful country with many mountains, forests, beaches, rivers and lochs or lakes. Inthe north of Scotland it is light until 11.30 p.m. in summer and in winter you can sometimes see theNorthern Lights or Aurora Borealis, which are spectacular lights in the sky. Energy from the sun turns theEarth’s sky green, red and other colours.',
    ),
    PhotoTheCapital(
        image: 'https://www.state.gov/wp-content/uploads/2023/07/shutterstock_1656628171v2-2107x1406.jpg',
        text: 'Spain occupies most of the Iberian Peninsula, stretching south from the Pyrenees Mountains to the Strait of Gibraltar, which separates Spain from Africa.',
    )
  ];

   WidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: const Text(
          'Capitals',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w600,
            wordSpacing: 25,
            fontFamily: AutofillHints.addressCity,
          ),
        ),
          iconTheme: const IconThemeData.fallback(),
          actions: const [
            Icon(Icons.battery_charging_full_outlined),
            Icon(Icons.cake_outlined),
            Icon(Icons.eco),
        ],
      ),

      body: Column(
      children: [
        Expanded(
            child: GridView.builder(
              itemCount: capitals.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: const Duration(seconds: 4),
                        backgroundColor: Colors.greenAccent,
                        content: Text(
                          capitals[index].text,
                          softWrap: true,
                          overflow: TextOverflow.clip,
                          maxLines: 10,
                          textScaleFactor: 1,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      )
                    ),
                    child: Container(
                      child: Image.network(
                          capitals[index].image,
                        fit: BoxFit.fill,
                        height: 20,
                        width: 30,
                      ),
                    )
                  );
              }
            )
          )
        ],
      ),
    );
  }
}

class PhotoTheCapital {
  final String image;
  final String text;

  PhotoTheCapital({required this.image, required this.text});
}