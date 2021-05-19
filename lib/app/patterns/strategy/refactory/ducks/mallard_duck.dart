import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/behavior/fly_with_wings.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/behavior/quack.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/interfaces/duck.dart';

class MallardDuck extends Duck {
  MallardDuck() {
    flyBehavior = FlyWithWings();
    quackBehavior = Quack();
  }

  @override
  String display() {
    return 'Mallard parece um pato bravo!';
  }
}
