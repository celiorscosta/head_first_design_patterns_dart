import 'package:head_first_design_patterns_dart/app/patterns/strategy/duck/refactory/interfaces/fly_behavior.dart';

class FlyRocketPowered implements FlyBehavior {
  @override
  String fly() {
    return 'Voa como um foguete!';
  }
}
