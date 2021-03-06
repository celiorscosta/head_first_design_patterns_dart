import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/factories/abstractions/pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/pizzas/abstractions/pizza.dart';

class VeggiePizza extends Pizza {
  final PizzaIngredientFactory ingredientFactory;
  VeggiePizza(this.ingredientFactory);

  @override
  void prepare() {
    print('Preparing $name');
    dough = ingredientFactory.createDough();
    print(dough.ingredientsToString());
    sauce = ingredientFactory.createSauce();
    print(dough.ingredientsToString());
    cheese = ingredientFactory.createCheese();
    print(dough.ingredientsToString());
    veggies = ingredientFactory.createVeggies();
    veggies.forEach(
      (element) => print(
        'Add veggie: ${element.ingredientsToString()}',
      ),
    );
  }
}
