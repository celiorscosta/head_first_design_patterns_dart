import 'package:head_first_design_patterns_dart/app/patterns/factory/simple_factory/implementations/pizzas/cheese_pizza.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/simple_factory/implementations/pizzas/clam_pizza.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/simple_factory/implementations/pizzas/pepperoni_pizza.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/simple_factory/implementations/pizzas/veggie_pizza.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/simple_factory/interface/pizza.dart';

class SimplePizzaFactory {
  Pizza createPizza(String type) {
    Pizza pizza;
    switch (type) {
      case 'cheese':
        pizza = CheesePizza();
        break;
      case 'veggie':
        pizza = VeggiePizza();
        break;
      case 'clam':
        pizza = ClamPizza();
        break;
      case 'pepperoni':
        pizza = PepperoniPizza();
        break;
      default:
        pizza = CheesePizza();
    }

    return pizza;
  }
}
