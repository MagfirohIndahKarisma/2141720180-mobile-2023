import 'package:flutter/material.dart';
import 'alert_myLayout.dart';

class alert extends StatelessWidget {
  const alert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: alertMyLayout(),
      ),
    );
  }
}
