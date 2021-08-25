import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/pizzas/abstractions/pizza.dart';

abstract class PizzaStore {
  Pizza OrderPizza({required String type}) {
    var pizza = createPizza(type: type);
    pizza.prepare();
    pizza.bake();
    pizza.cut();
    pizza.box();
    return pizza;
  }

  Pizza createPizza({required String type});
}
