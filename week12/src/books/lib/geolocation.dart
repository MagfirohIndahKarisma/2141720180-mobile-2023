import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';

  @override
  void initState() {
    super.initState();
    _getPosition();
  }

  Future<void> _getPosition() async {
    await Geolocator.requestPermission();
    if (await Geolocator.isLocationServiceEnabled()) {
      Position? position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      if (position != null) {
        setState(() {
          myPosition =
              'Latitude: ${position.latitude.toString()} - Longitude: ${position.longitude.toString()}';
        });
      } else {
        setState(() {
          myPosition = 'Unable to fetch location';
        });
      }
    } else {
      setState(() {
        myPosition = 'Location services are disabled';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
      final myWidget =
          myPosition == '' ? const CircularProgressIndicator() : Text(myPosition);

      return Scaffold(
      appBar: AppBar(title: const Text('Current Location Risma')),
      body: Center(child: myWidget),
      );
  }
}