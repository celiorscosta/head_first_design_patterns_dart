import 'package:head_first_design_patterns_dart/app/patterns/strategy/duck/refactory/interfaces/fly_behavior.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/duck/refactory/interfaces/quack_behavior.dart';

abstract class Duck {
  late FlyBehavior flyBehavior;
  late QuackBehavior quackBehavior;

  void setFlyBehavior(FlyBehavior fb) {
    flyBehavior = fb;
  }

  void setQuackBehavior(QuackBehavior qb) {
    quackBehavior = qb;
  }

  String performQuack() {
    return quackBehavior.quack();
  }

  String performFly() {
    return flyBehavior.fly();
  }

  String swim() {
    return 'nadar';
  }

  String display();
}
