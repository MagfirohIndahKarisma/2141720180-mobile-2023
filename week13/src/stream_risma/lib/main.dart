import 'package:flutter/material.dart';
import './stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stream Risma',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const StreamHomepage(),
    );
  }
}

class StreamHomepage extends StatefulWidget {
  const StreamHomepage({super.key});

  @override
  State<StreamHomepage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomepage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Risma'),
      ),
      body: Container(
        decoration: BoxDecoration(color: bgColor),
      )
    );
  }

  void changeColor() async {
    colorStream.getColors().listen((eventColor) {
      setState(() {
          bgColor = eventColor;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    colorStream = ColorStream();
    changeColor();
  }
}