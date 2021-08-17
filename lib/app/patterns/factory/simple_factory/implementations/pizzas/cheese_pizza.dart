import 'package:head_first_design_patterns_dart/app/patterns/factory/simple_factory/interface/pizza.dart';

class CheesePizza extends Pizza {
  CheesePizza() {
    name = 'Cheese Pizza';
  }

  @override
  void bake() {
    print('Bake Cheese Pizza for 18 minutes at 350');
  }
}
