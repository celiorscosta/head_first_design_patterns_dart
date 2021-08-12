import 'package:head_first_design_patterns_dart/app/patterns/decorator/interfaces/beverage.dart';
import 'package:head_first_design_patterns_dart/app/patterns/decorator/interfaces/condiment_decorator.dart';

class Mocha extends CondimentDecorator {
  final Beverage beverage;
  Mocha(this.beverage);

  @override
  String getDescription() {
    return '${beverage.getDescription()}, Mocha';
  }

  @override
  double cost() {
    return 0.99 + beverage.cost();
  }
}
