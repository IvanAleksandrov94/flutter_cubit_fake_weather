part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final weather;
  WeatherLoaded(this.weather);
}

class WeatherError extends WeatherState {
  final message;
  WeatherError(this.message);
}
