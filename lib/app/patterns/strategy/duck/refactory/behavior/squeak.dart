import 'package:head_first_design_patterns_dart/app/patterns/strategy/duck/refactory/interfaces/quack_behavior.dart';

class Squeak implements QuackBehavior {
  @override
  String quack() {
    return 'guinchar';
  }
}
