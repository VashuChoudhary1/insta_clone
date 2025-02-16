import 'package:flutter/material.dart';
import 'package:socify/home_elements/post.dart';
import 'package:socify/home_elements/story.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Socify",
        ),
        centerTitle: true,
        leading: Icon(
          Icons.account_circle_sharp,
          size: 24.0,
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
              )),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          StoryPage(),
          SizedBox(
            height: 10,
          ),
          PostPage(),
        ],
      ),
    );
  }
}
