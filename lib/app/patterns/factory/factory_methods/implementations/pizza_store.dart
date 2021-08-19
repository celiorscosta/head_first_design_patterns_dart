import 'package:head_first_design_patterns_dart/app/patterns/factory/simple_factory/factory/simple_pizza_factory.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/simple_factory/interface/pizza.dart';

class PizzaStore {
  final SimplePizzaFactory _factory;

  PizzaStore(this._factory);

  Pizza OrderPizza(String type) {
    var pizza = _factory.createPizza(type);
    pizza.prepare();
    pizza.bake();
    pizza.cut();
    pizza.box();
    return pizza;
  }
}
