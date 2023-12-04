import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cyan'),
              onPressed: (){
                color = Colors.cyan.shade700;
                Navigator.pop(context, color);
              }),
              TextButton(
                child: const Text('Orange'),
                onPressed: () {
                  color = Colors.orange.shade700;
                  Navigator.pop(context, color);
                }),
                TextButton(
                child: const Text('Yellow'),
                onPressed: () {
                  color = Colors.yellow.shade700;
                  Navigator.pop(context, color);
                }),
          ],
        );
      },
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
          title: const Text('Navigation Dialog Screen Risma'),
      ),
      body: Center(
          child:
              ElevatedButton(
                child: const Text('Change color'), 
                onPressed: () {
                  _showColorDialog(context);
                }),
      ),
    );
  }
}