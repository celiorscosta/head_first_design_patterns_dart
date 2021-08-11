import 'package:head_first_design_patterns_dart/app/patterns/observer/interfaces/diplay_element.dart';
import 'package:head_first_design_patterns_dart/app/patterns/observer/interfaces/observer.dart';
import 'package:head_first_design_patterns_dart/app/patterns/observer/interfaces/subject.dart';

class CurrentConditionsDisplay implements Observer, DisplayElement {
  double _temperature = 0.0;
  double _humidity = 0.0;
  Subject weatherData;

  CurrentConditionsDisplay({required this.weatherData}) {
    weatherData.registerObserver(this);
  }

  @override
  void update({
    required double temperature,
    required double humidity,
    required double pressure,
  }) {
    _temperature = temperature;
    _humidity = humidity;
    display();
  }

  @override
  void display() {
    print(
        'Current conditions: $_temperature F degrees and $_humidity % humidity');
  }
}
