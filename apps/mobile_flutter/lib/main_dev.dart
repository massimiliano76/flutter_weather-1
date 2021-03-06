import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather/app.dart';
import 'package:flutter_weather/bloc/app_bloc_observer.dart';
import 'package:flutter_weather/config.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Bloc
  Bloc.observer = AppBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build();

  // await HydratedBloc.storage.clear();

  // DEV Environment Specific Configuration
  AppConfig config = AppConfig(
    flavor: Flavor.dev,
    child: WeatherApp(),
  );

  runApp(config);
}
