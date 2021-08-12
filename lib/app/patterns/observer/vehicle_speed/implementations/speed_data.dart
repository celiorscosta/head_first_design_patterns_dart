import 'package:head_first_design_patterns_dart/app/patterns/observer/vehicle_speed/interfaces/speed_observer.dart';
import 'package:head_first_design_patterns_dart/app/patterns/observer/vehicle_speed/interfaces/speed_subject.dart';

class VehicleSpeedData implements SpeedSubject {
  final List _observers = [];
  late double _speed;
  late String _hour;
  late double _speedLimit;

  @override
  void registerObserver(SpeedObserver speedObserver) {
    _observers.add(speedObserver);
  }

  @override
  void removeObserver(SpeedObserver speedObserver) {
    var i = _observers.indexOf(speedObserver);
    if (i >= 0) {
      _observers.removeAt(i);
    }
  }

  @override
  void notifyObservers() {
    if (_observers.isEmpty) {
      print('There are no observers!');
    }

    for (var i = 0; i < _observers.length; i++) {
      SpeedObserver observer = _observers[i];
      observer.update(speed: _speed, hour: _hour, speedLimit: _speedLimit);
    }
  }

  void SpeedChanged() {
    notifyObservers();
  }

  void setMeasurements({
    required double speed,
    required String hour,
    required double speedLimit,
  }) {
    _speed = speed;
    _hour = hour;
    _speedLimit = speedLimit;

    SpeedChanged();
  }
}
