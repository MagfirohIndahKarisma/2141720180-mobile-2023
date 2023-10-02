import 'package:flutter/material.dart';
import 'inCounter_myHomePage.dart';

class inCounter extends StatelessWidget {
  const inCounter({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const inCounterHome(title: 'My Increment App'),
    );
  }
}