import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/interface/pizza.dart';

class NYStyleCheesePizza extends Pizza {
  NYStyleCheesePizza() {
    name = 'NY Style Sauce and Cheese Pizza';
  }

  @override
  void bake() {
    print('Bake Cheese Pizza for 20 minutes at 300');
  }

  @override
  void box() {
    print('Place pizza in official NYPizzaStore box');
  }
}
