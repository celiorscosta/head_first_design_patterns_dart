import 'package:head_first_design_patterns_dart/app/patterns/observer/vehicle_speed/interfaces/speed_observer.dart';

abstract class SpeedSubject {
  void registerObserver(SpeedObserver speedObserver);
  void removeObserver(SpeedObserver speedObserver);
  void notifyObservers();
}
