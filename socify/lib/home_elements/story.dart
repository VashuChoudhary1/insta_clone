import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final List<String> storyImage = [
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
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: storyImage.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(storyImage[index]),
              ),
            );
          }),
    );
  }
}
