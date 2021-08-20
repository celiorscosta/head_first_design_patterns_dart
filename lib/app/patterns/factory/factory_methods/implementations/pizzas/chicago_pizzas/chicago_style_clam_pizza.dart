import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/interface/pizza.dart';

class ChicagoStyleClamPizza extends Pizza {
  ChicagoStyleClamPizza() {
    name = 'Chicago Style Clam Pizza';
  }

  @override
  void cut() {
    print('Cutting the pizza into square slices');
  }
}
