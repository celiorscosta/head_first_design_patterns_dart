import 'package:head_first_design_patterns_dart/app/patterns/decorator/interfaces/beverage.dart';
import 'package:head_first_design_patterns_dart/app/patterns/decorator/interfaces/condiment_decorator.dart';

class Whip extends CondimentDecorator {
  final Beverage beverage;
  Whip(this.beverage);

  @override
  String getDescription() {
    return '${beverage.getDescription()}, Whip';
  }

  @override
  double cost() {
    return 1.99 + beverage.cost();
  }
}
