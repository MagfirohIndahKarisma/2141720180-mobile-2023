import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
      Color color;
      return Scaffold(
      appBar: AppBar(
          title: const Text('Navigation Second Screen Risma'),
      ),
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              ElevatedButton(
                  child: const Text('Pink'),
                  onPressed: () {
                  color = const Color.fromARGB(255, 255, 135, 175);
                  Navigator.pop(context, color);
                  }),
              ElevatedButton(
                  child: const Text('Purple'),
                  onPressed: () {
                  color = const Color.fromARGB(255, 236, 130, 255);
                  Navigator.pop(context, color);
                  }),
              ElevatedButton(
                  child: const Text('Light Blue'),
                  onPressed: () {
                  color = const Color.fromARGB(255, 112, 200, 241);
                  Navigator.pop(context, color);
              }
            ),
          ],
        ),
      ),
    );
  }
}