import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/interfaces/pizza.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/interfaces/pizza_ingredient_factory.dart';

class CheesePizza extends Pizza {
  final PizzaIngredientFactory ingredientFactory;
  CheesePizza(this.ingredientFactory);

  @override
  void prepare() {
    print('Preparing $getName()');
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce()();
    cheese = ingredientFactory.createCheese();
  }
}
