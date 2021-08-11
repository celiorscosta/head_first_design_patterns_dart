import 'package:head_first_design_patterns_dart/app/patterns/observer/vehicle_speed/implements/current_speed_data.dart';
import 'package:head_first_design_patterns_dart/app/patterns/observer/vehicle_speed/implements/speed_data.dart';
import 'package:test/test.dart';

void main() {
  test('Display Speed.', () {
    var speedData = VehicleSpeedData();
    var currentSpeedDisplay = CurrentSpeedDisplay(speedData: speedData);

    speedData.setMeasurements(speed: 80, hour: '12:35', speedLimit: 60);
    speedData.setMeasurements(speed: 60, hour: '12:36', speedLimit: 60);
    speedData.setMeasurements(speed: 55, hour: '12:37', speedLimit: 60);
    speedData.setMeasurements(speed: 61, hour: '12:38', speedLimit: 60);
    speedData.setMeasurements(speed: 63, hour: '12:39', speedLimit: 60);

    speedData.removeObserver(currentSpeedDisplay);
    speedData.setMeasurements(speed: 80, hour: '12:35', speedLimit: 60);
  });
}
