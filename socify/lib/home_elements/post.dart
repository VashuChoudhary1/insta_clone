import 'package:flutter/material.dart';
import 'package:socify/consts/colors.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final List<String> postList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAO5LOaE1j_J0WUBR80m7nrGl7geeYvBruRQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShgm7s12jf6u2Y-OmhOWiqpHXjEu3JDsvlBw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSToIeE5aZEhgLTJ6pY-IJynoqT2C2tSv0abQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUBB3f7o_NMHJYl5MwCiprgh8UiKlhtLlu3g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAO5LOaE1j_J0WUBR80m7nrGl7geeYvBruRQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShgm7s12jf6u2Y-OmhOWiqpHXjEu3JDsvlBw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSToIeE5aZEhgLTJ6pY-IJynoqT2C2tSv0abQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUBB3f7o_NMHJYl5MwCiprgh8UiKlhtLlu3g&s',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: postList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Stack(
                    children: [
                      Image.network(
                        postList[index],
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        right: 10,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 5.0),
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black.withOpacity(0.5)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 5.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        NetworkImage(postList[index]),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "user name ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.drag_indicator_rounded,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 10,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                                Text(
                                  "1234",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.message_outlined,
                                  color: Colors.white,
                                ),
                                Text("172",
                                    style: TextStyle(color: Colors.white)),
                                Icon(Icons.share_sharp, color: Colors.white),
                                Text("20",
                                    style: TextStyle(color: Colors.white))
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
