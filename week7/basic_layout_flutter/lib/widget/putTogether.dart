import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.account_circle, size: 50),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Magfiroh Indah Karisma',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Text('Student of State Polytechnic of Malang'),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text('Lowokwaru, Malang'),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text('083129981689'),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Icon(
              Icons.accessibility,
              size: 50,
            ),
            Icon(
              Icons.timer,
              size: 50,
            ),
            Icon(
              Icons.phone_android,
              size: 50,
            ),
            Icon(
              Icons.phone_iphone,
              size: 50,
            ),
          ],
        ),
      ],
    );
  }
}
