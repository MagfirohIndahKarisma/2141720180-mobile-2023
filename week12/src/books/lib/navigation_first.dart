import 'package:flutter/material.dart';
import './navigation_second.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.lightGreenAccent;

  Future _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NavigationSecond()),) ?? Colors.blue;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text('Navigation First Screen Risma')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change color'),
          onPressed: () {
              _navigateAndGetColor(context);
          }
        ),
      ),
    );
  }
}