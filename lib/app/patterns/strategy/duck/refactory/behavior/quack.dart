import 'package:head_first_design_patterns_dart/app/patterns/strategy/duck/refactory/interfaces/quack_behavior.dart';

class Quack implements QuackBehavior {
  @override
  String quack() {
    return 'grasnar';
  }
}
