import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/weather_model.dart';

class WeatherInformation extends StatelessWidget {
  const WeatherInformation({
    required this.weatherModel,
    Key? key,
  }) : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Icon(
            Icons.sunny,
            color: Colors.yellowAccent,
          ),
          const SizedBox(height: 10),
          Text('${weatherModel.main.temp}C'),
          const SizedBox(height: 10),
          Text('${weatherModel.name}'),
          const SizedBox(height: 10),
          Text('${weatherModel.weather.first.description}'),
        ],
      ),
    );
  }
}
