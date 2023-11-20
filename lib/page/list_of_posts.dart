import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListOfPosts extends StatelessWidget {
  ListOfPosts({super.key});

  List<PostModel> postList = [
    PostModel(
        image:
            'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
    PostModel(
        image:
            'https://buffer.com/library/content/images/2023/09/instagram-image-size.jpg',
        description:
            'At vero eos et Acusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias exceptionuri sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum qui дем rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas acceptnda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe вечір ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: const Text(
          'I like nature',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: ListView.builder(
          itemCount: postList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.network(
                  postList[index].image,
                  fit: BoxFit.fitHeight,
                ),
                Text(postList[index].description,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    decorationColor: Colors.green,
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class PostModel {
  final String image;
  final String description;

  PostModel({required this.image, required this.description});
}
