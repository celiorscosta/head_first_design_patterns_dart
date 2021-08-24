import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/interfaces/pizza_ingredient_factory.dart';

class NYPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  @override
  createDough() {
    return ThinCrustDough();
  }

  @override
  createSauce() {
    return MarinaraSauce();
  }

  createCheese() {
    return ReggianoCheese();
  }

  @override
  List<Veggies> createVeggies() {
    var veggies = {Garlic(), Onion(), Mushroom(), RedPepper()};
    return veggies;
  }

  @override
  createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  createClam() {
    return FreshClams();
  }
}
