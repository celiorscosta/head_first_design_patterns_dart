import 'package:head_first_design_patterns_dart/app/patterns/observer/weatherData/interfaces/observer.dart';
import 'package:head_first_design_patterns_dart/app/patterns/observer/weatherData/interfaces/subject.dart';

class WeatherData implements Subject {
  late List _observers;
  double _temperature = 0.0;
  double _humidity = 0.0;
  double _pressure = 0.0;

  WeatherData() {
    _observers = [];
  }

  @override
  void registerObserver(Observer o) {
    _observers.add(o);
  }

  @override
  void removeObserver(Observer o) {
    var i = _observers.indexOf(o);
    if (i >= 0) {
      _observers.remove(i);
    }
  }

  @override
  void notifyObservers() {
    for (var i = 0; i < _observers.length; i++) {
      Observer observer = _observers[i];
      observer.update(
        temperature: _temperature,
        humidity: _humidity,
        pressure: _pressure,
      );
    }
  }

  void measurementsChanged() {
    notifyObservers();
  }

  void setMeasurements(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;

    measurementsChanged();
  }
}
