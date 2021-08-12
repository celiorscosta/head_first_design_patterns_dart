import 'package:head_first_design_patterns_dart/app/patterns/decorator/interfaces/beverage.dart';

class DarkRoast extends Beverage {
  DarkRoast() {
    description = 'Dark Roast Coffee';
  }

  @override
  double cost() {
    return 4.09;
  }
}
