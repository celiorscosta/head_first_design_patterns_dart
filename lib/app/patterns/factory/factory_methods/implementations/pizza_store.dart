import 'package:head_first_design_patterns_dart/app/patterns/factory/simple_factory/interface/pizza.dart';

abstract class PizzaStore {
  Pizza OrderPizza(String type) {
    var pizza = createPizza(type);
    pizza.prepare();
    pizza.bake();
    pizza.cut();
    pizza.box();
    return pizza;
  }

  Pizza createPizza(String type);
}
