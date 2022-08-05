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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_rounded,
                  size: 15,
                ),
                Padding(padding: EdgeInsets.only(right: 5)),
                Text(
                  '${weatherModel.name}',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'http://openweathermap.org/img/wn/${weatherModel.weather.first.icon}.png',
                  scale: 0.8,
                ),
                Text(
                  '${weatherModel.main.temp.round()}°',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 170,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              '${weatherModel.weather.first.description}',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shutter_speed),
                Text(
                  '${(weatherModel.main.pressure / 10).round()} kPa',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(width: 25),
                Icon(Icons.water_drop),
                Text(
                  '${weatherModel.main.humidity}%',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
