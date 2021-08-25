import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/abstractions/exports.dart';

abstract class PizzaIngredientFactory {
  Dough createDough();
  Sauce createSauce();
  Cheese createCheese();
  List<Veggies> createVeggies();
  Pepperoni createPepperoni();
  Clams createClam();
}
