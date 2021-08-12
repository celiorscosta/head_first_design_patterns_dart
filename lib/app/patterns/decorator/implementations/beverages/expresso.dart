import 'package:head_first_design_patterns_dart/app/patterns/decorator/interfaces/beverage.dart';

class Expresso extends Beverage {
  Expresso() {
    description = 'Expresso';
  }

  @override
  double cost() {
    return 5.99;
  }
}
