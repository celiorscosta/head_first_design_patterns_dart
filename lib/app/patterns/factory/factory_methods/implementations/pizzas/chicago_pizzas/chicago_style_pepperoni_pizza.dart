import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/interface/pizza.dart';

class ChicagoStylePepperoniPizza extends Pizza {
  ChicagoStylePepperoniPizza() {
    name = 'Chicago Style Pepperoni Pizza';
  }

  @override
  void cut() {
    print('Cutting the pizza into square slices');
  }
}
