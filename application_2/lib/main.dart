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
          backgroundColor: const Color.fromARGB(255, 234, 201, 104),
          title: const Text(
            "kasay na seth",
            style: TextStyle(fontSize: 20),
            selectionColor: Colors.black,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: Text('Vishay jara hardach ahe'),
        ),
      ),
    );
  }
}
