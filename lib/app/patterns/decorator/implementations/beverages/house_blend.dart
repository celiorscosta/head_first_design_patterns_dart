import 'package:head_first_design_patterns_dart/app/patterns/decorator/interfaces/beverage.dart';

class HouseBlend extends Beverage {
  HouseBlend() {
    description = 'House Blend Coffee';
  }

  @override
  double cost() {
    return 4.89;
  }
}
