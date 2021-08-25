import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/factories/abstractions/pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/pizzas/abstractions/pizza.dart';

class PepperoniPizza extends Pizza {
  final PizzaIngredientFactory ingredientFactory;
  PepperoniPizza(this.ingredientFactory);

  @override
  void prepare() {
    print('Preparing $getName()');
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
    veggies = ingredientFactory.createVeggies();
    pepperoni = ingredientFactory.createPepperoni();
  }
}
