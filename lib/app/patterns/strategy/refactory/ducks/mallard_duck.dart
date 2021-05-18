import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/interfaces/duck.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/interfaces/fly_behavior.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/interfaces/quack_behavior.dart';

class MallardDuck extends Duck {
  MallardDuck({FlyBehavior flyBehavior, QuackBehavior quackBehavior})
      : super(flyBehavior, quackBehavior);

  @override
  String display() {
    return 'Mallard parece um pato bravo!';
  }
}
