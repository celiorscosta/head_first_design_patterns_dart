import 'package:head_first_design_patterns_dart/app/patterns/decorator/interfaces/beverage.dart';
import 'package:head_first_design_patterns_dart/app/patterns/decorator/interfaces/condiment_decorator.dart';

class Soy extends CondimentDecorator {
  final Beverage beverage;
  Soy(this.beverage);

  @override
  String getDescription() {
    return '${beverage.getDescription()}, Soy';
  }

  @override
  double cost() {
    return 0.79 + beverage.cost();
  }
}
