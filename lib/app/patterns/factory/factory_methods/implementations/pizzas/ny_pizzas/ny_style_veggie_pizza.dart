import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/interface/pizza.dart';

class NYStyleVeggiePizza extends Pizza {
  NYStyleVeggiePizza() {
    name = 'NY Style Veggie Pizza';
  }

  @override
  void cut() {
    print('Cutting the pizza into square slices');
  }
}
