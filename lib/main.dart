import 'package:cubit_weather/cubit/weather_cubit.dart';
import 'package:cubit_weather/models/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Screens/homescreen.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(context) {
    return BlocProvider(
      create: (BuildContext context) => WeatherCubit(FakeWeatherRepository()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather Application',
        theme: ThemeData.light(),
        home: WeatherSearchPage(),
      ),
    );
  }
}
