import 'package:head_first_design_patterns_dart/app/patterns/strategy/duck/refactory/interfaces/quack_behavior.dart';

class MuteQuack implements QuackBehavior {
  @override
  String quack() {
    return 'Silencio';
  }
}
