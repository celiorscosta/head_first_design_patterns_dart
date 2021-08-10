import 'dart:ffi';

abstract class Observer {
  void update(Float temp, Float humidity, Float pressure);
}
