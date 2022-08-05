import 'package:flutter/material.dart';

class WeatherDetail extends StatelessWidget {
  const WeatherDetail({required this.cityName, Key? key}) : super(key: key);

  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Detail'),
      ),
      body: Center(
        child: Text('here lies the $cityName weather detail'),
      ),
    );
  }
}
