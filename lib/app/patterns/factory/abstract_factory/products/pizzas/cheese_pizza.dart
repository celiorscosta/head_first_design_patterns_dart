import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/factories/abstractions/pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/pizzas/abstractions/pizza.dart';

class CheesePizza extends Pizza {
  final PizzaIngredientFactory ingredientFactory;
  CheesePizza(this.ingredientFactory);

  @override
  void prepare() {
    print('Preparing $name');
    dough = ingredientFactory.createDough();
    print(dough.ingredientsToString());
    sauce = ingredientFactory.createSauce();
    print(sauce.ingredientsToString());
    cheese = ingredientFactory.createCheese();
    print(cheese.ingredientsToString());
  }
}
