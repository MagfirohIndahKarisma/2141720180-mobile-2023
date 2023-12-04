import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late Future<Position> position;

  @override
  void initState() {
    super.initState();
    position = getPosition();
  }

  Future<Position> getPosition() async {
    await Geolocator.isLocationServiceEnabled();
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Location Risma')),
      body: Center(
        child: FutureBuilder<Position>(
          future: position,
          builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('Something terrible happened!');
              } else if (snapshot.hasData) {
                return Text(snapshot.data.toString());
              } else {
                return const Text('No data available');
              }
            } else {
              return const Text('');
            }
          },
        ),
      ),
    );
  }
}