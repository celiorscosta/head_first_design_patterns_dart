import 'package:head_first_design_patterns_dart/app/patterns/observer/observer.dart';

abstract class Subject {
  void registerObserver(Observer o);
  void removeObserver(Observer o);
  void notifyObservers();
}
