import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/factories/abstractions/pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/pizzas/abstractions/pizza.dart';

class ClamPizza extends Pizza {
  final PizzaIngredientFactory ingredientFactory;
  ClamPizza(this.ingredientFactory);

  @override
  void prepare() {
    print('Preparing $name');
    dough = ingredientFactory.createDough();
    print(dough.ingredientsToString());
    sauce = ingredientFactory.createSauce();
    print(sauce.ingredientsToString());
    cheese = ingredientFactory.createCheese();
    print(cheese.ingredientsToString());
    clam = ingredientFactory.createClam();
    print(clam.ingredientsToString());
  }
}
