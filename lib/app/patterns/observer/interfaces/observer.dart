import 'dart:ffi';

abstract class Observer {
  void update(double temp, double humidity, double pressure);
}