import 'package:flutter/material.dart';

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
      height: 500,
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
                child: Stack(
                  children: [
                    Image.network(
                      postList[index],
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5.0),
                      child: Container(
                        height: 30,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(postList[index]),
                            ),
                            Text(
                              "Profile user name ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              child: Icon(Icons.drag_indicator_rounded),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
