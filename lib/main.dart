import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/pages/home_page.dart';
import 'package:flutter_weather_app/states/weather_cubit.dart';

void main() {
  runApp(BlocProvider(create: (context) => WeatherCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(),
    );
  }
}
