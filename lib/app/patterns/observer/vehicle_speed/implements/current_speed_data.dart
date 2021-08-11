import 'package:head_first_design_patterns_dart/app/patterns/observer/vehicle_speed/interfaces/display_speed.dart';
import 'package:head_first_design_patterns_dart/app/patterns/observer/vehicle_speed/interfaces/speed_observer.dart';
import 'package:head_first_design_patterns_dart/app/patterns/observer/vehicle_speed/interfaces/speed_subject.dart';

class CurrentSpeedDisplay implements SpeedObserver, DisplaySpeed {
  late double _speed;
  late String _hour;
  late double _speedLimit;
  SpeedSubject speedData;

  CurrentSpeedDisplay({required this.speedData}) {
    speedData.registerObserver(this);
  }

  @override
  void update({
    required double speed,
    required String hour,
    required double speedLimit,
  }) {
    _speed = speed;
    _hour = hour;
    _speedLimit = speedLimit;
    if (_speed > _speedLimit) display();
  }

  @override
  void display() {
    if (_speed > _speedLimit) {
      print(
        'Speed Exceeded: $_speed km/h at $_hour hours, Speed Limit: $_speedLimit',
      );
    }
  }
}
