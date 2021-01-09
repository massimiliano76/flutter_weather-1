part of 'lookup_bloc.dart';

abstract class LookupEvent extends Equatable {
  const LookupEvent();

  @override
  List<Object> get props => [];
}

class LookupForecast extends LookupEvent {
  final Map<String, dynamic> lookupData;
  final TemperatureUnit temperatureUnit;

  const LookupForecast(
    this.lookupData,
    this.temperatureUnit,
  );

  @override
  List<Object> get props => [lookupData, temperatureUnit];
}

class ClearForecast extends LookupEvent {
  const ClearForecast();

  @override
  List<Object> get props => [];
}
