import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/implementations/pizzas/ny_pizzas/ny_pizzas.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/interface/pizza.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/interface/pizza_store.dart';

class NYPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String type) {
    switch (type) {
      case 'cheese':
        return NYStyleCheesePizza();
      case 'veggie':
        return NYStyleVeggiePizza();
      case 'clam':
        return NYStyleClamPizza();
      case 'pepperoni':
        return NYStylePepperoniPizza();
      default:
        throw UnimplementedError();
    }
  }
}
