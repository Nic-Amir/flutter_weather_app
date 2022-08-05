import 'package:flutter_weather_app/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  Future<WeatherModel> fetchWeatherInformation(String cityName) async {
    const String apiKey = '4c92f4e904cec6a5a95d13d0e9b38e6e';
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.openweathermap.org',
      path: '/data/2.5/weather',
      queryParameters: {
        'q': cityName,
        'appid': apiKey,
        'units': 'metric',
      },
    );

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(response.body);
    } else {
      throw Exception('Failed to load weather information');
    }
  }
}
