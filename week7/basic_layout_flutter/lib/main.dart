// import 'dart:async';
import 'package:flutter/material.dart';
import 'package:assignment1_layoutbasics/widget/putTogether.dart';
// import 'package:flutter_test/flutter_test.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text ('Basic Layout Flutter'),
      ),
      body: MyWidget(),
    ),
  ));
}

/* class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network('https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic3.jpg'),
      ],
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
} */