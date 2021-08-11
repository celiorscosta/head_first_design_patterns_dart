import 'dart:ffi';

abstract class Observer {
  void update({
    required double temperature,
    required double humidity,
    required double pressure,
  });
}
