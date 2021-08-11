import 'package:head_first_design_patterns_dart/app/patterns/observer/weatherData/implements/currentConditionsDisplay.dart';
import 'package:head_first_design_patterns_dart/app/patterns/observer/weatherData/implements/weatherData.dart';
import 'package:test/test.dart';

void main() {
  test('Display data.', () {
    var weatherData = WeatherData();
    CurrentConditionsDisplay(weatherData: weatherData);

    weatherData.setMeasurements(80, 65, 30.4);
    weatherData.setMeasurements(82, 70, 29.2);
    weatherData.setMeasurements(78, 90, 29.3);
  });
}
