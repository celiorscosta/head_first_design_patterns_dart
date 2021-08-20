import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/interface/pizza.dart';

class ChicagoStyleVeggiePizza extends Pizza {
  ChicagoStyleVeggiePizza() {
    name = 'Chicago Deep Dish Veggie Pizza';
  }

  @override
  void cut() {
    print('Cutting the pizza into square slices');
  }
}
