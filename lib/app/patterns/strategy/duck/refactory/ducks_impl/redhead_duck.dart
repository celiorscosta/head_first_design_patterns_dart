import 'package:head_first_design_patterns_dart/app/patterns/strategy/duck/refactory/behavior/fly_with_wings.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/duck/refactory/behavior/squeak.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/duck/refactory/interfaces/duck.dart';

class RedHeadDuck extends Duck {
  RedHeadDuck() {
    flyBehavior = FlyWithWings();
    quackBehavior = Squeak();
  }

  @override
  String display() {
    return 'Parece um cabeça vermelha!';
  }
}
