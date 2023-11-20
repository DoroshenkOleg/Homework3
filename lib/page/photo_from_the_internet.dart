import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PhotoFromTheInternet extends StatelessWidget {

  List<PhotoFromInternet> photoInternet = [
    PhotoFromInternet(image: 'https://t4.ftcdn.net/jpg/05/47/97/81/360_F_547978128_vqEEUYBr1vcAwfRAqReZXTYtyawpgLcC.jpg'),
    PhotoFromInternet(image: 'https://statusneo.com/wp-content/uploads/2023/02/MicrosoftTeams-image551ad57e01403f080a9df51975ac40b6efba82553c323a742b42b1c71c1e45f1.jpg'),
    PhotoFromInternet(image: 'https://www.shutterstock.com/image-illustration/pristine-reflective-lake-show-image-260nw-2305485315.jpg'),
    PhotoFromInternet(image: 'https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg'),
    PhotoFromInternet(image: 'https://img.freepik.com/premium-photo/mountain-with-reflection-lake-generated-by-ai_793210-242.jpg'),
    PhotoFromInternet(image: 'https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L2EwMTYtamVyZW15Yi01MC5qcGc.jpg'),
  ];
   PhotoFromTheInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: photoInternet.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 20,
                  ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.network(photoInternet[index].image,
                        fit: BoxFit.cover,
                      )
                    ],
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}

class PhotoFromInternet {
  final String image;

  PhotoFromInternet({required this.image});
}