import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/datePicker_myHomePage.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contoh Date Picker',
      home: DatePickerHome(title: 'Contoh Date Picker'),
    );
  }
}
