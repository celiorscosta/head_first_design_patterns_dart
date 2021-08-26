import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/factories/abstractions/pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/pizzas/abstractions/pizza.dart';

class PepperoniPizza extends Pizza {
  final PizzaIngredientFactory ingredientFactory;
  PepperoniPizza(this.ingredientFactory);

  @override
  void prepare() {
    print('Preparing $name');
    dough = ingredientFactory.createDough();
    print(dough.ingredientsToString());
    sauce = ingredientFactory.createSauce();
    print(sauce.ingredientsToString());
    cheese = ingredientFactory.createCheese();
    print(cheese.ingredientsToString());
    veggies = ingredientFactory.createVeggies();
    veggies.forEach(
      (element) => print(
        'Add veggie: ${element.ingredientsToString()}',
      ),
    );
    pepperoni = ingredientFactory.createPepperoni();
    print(pepperoni.ingredientsToString());
  }
}
