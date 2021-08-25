import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/factories/ny_pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/pizzas/abstractions/pizza.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/factory_methods/abstractions/pizza_store.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/pizzas/ingredients_export.dart';

class NYPizzaStore extends PizzaStore {
  @override
  Pizza createPizza({required String type}) {
    var pizza;
    var pizzaIngredienteFactory = NYPizzaIngredientFactory();

    if (type == 'cheese') {
      pizza = CheesePizza(pizzaIngredienteFactory);
      pizza.name = 'New York Style Cheese Pizza';
    } else if (type == 'veggie') {
      pizza = VeggiePizza(pizzaIngredienteFactory);
      pizza.name = 'New York Style Veggie Pizza';
    } else if (type == 'clam') {
      pizza = ClamPizza(pizzaIngredienteFactory);
      pizza.name = 'New York Style Clam Pizza';
    } else if (type == 'pepperoni') {
      pizza = PepperoniPizza(pizzaIngredienteFactory);
      pizza.name = 'New York Style Pepperoni Pizza';
    }

    return pizza;
  }
}
