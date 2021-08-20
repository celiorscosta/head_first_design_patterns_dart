import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/interface/pizza.dart';

class ChicagoStyleCheesePizza extends Pizza {
  ChicagoStyleCheesePizza() {
    name = 'Chicago Style Deep Dish Cheese Pizza';
  }

  @override
  void cut() {
    print('Cutting the pizza into square slices');
  }
}
