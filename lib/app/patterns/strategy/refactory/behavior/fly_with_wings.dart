import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/interfaces/fly_behavior.dart';

class FlyWithWings implements FlyBehavior {
  @override
  String fly() {
    return 'Patos voando';
  }
}
