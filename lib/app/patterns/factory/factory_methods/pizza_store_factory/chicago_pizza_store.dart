import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/implementations/pizzas/chicago_pizzas/chicago_pizzas.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/interface/pizza.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/interface/pizza_store.dart';

class ChicagoPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String type) {
    switch (type) {
      case 'cheese':
        return ChicagoStyleCheesePizza();
      case 'veggie':
        return ChicagoStyleVeggiePizza();
      case 'clam':
        return ChicagoStyleClamPizza();
      case 'pepperoni':
        return ChicagoStylePepperoniPizza();
      default:
        throw UnimplementedError();
    }
  }
}
