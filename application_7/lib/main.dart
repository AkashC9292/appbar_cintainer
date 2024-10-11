import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Horizontal Images Scrollable'),
        ),
        body: const HorizontalImageScroll(),
      ),
    );
  }
}

class HorizontalImageScroll extends StatelessWidget {
  const HorizontalImageScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          imageContainer(
              'https://i.pinimg.com/originals/89/3f/fd/893ffdb8c9e5d47e2855e348848195b9.jpg'),
          imageContainer(
              'https://i.pinimg.com/474x/64/f5/b1/64f5b18fb927cae4ad991ca6e82556bc.jpg'),
          imageContainer(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDUYh0na62uQueHVtRhDX460mn-xhBR394enpIA7OLbbGpqcVRBzgp89cp5Hh2cgLZXr8&usqp=CAU'),
          imageContainer(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHRMo80om6duXC1jnW8wX__jGukw60r4srfw&s'),
          imageContainer(
              'https://i.pinimg.com/736x/4a/26/03/4a26033bbc9dc4bce755d0f4ec765649.jpg'),
        ],
      ),
    );
  }

  Widget imageContainer(String imageUrl) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 150,
      height: 300,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
