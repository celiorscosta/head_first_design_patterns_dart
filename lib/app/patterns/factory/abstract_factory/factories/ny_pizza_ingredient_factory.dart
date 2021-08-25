import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/factories/abstractions/pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/abstractions/exports.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/fresh_clams.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/garlic.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/marinara_sauce.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/mushroom.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/onion.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/red_pepper.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/reggiano_cheese.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/sliced_pepperoni.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/thin_crust_dough.dart';

class NYPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  Dough createDough() {
    return ThinCrustDough();
  }

  @override
  Sauce createSauce() {
    return MarinaraSauce();
  }

  @override
  Cheese createCheese() {
    return ReggianoCheese();
  }

  @override
  List<Veggies> createVeggies() {
    var veggies = <Veggies>[Garlic(), Onion(), Mushrooms(), RedPepper()];
    return veggies;
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Clams createClam() {
    return FreshClams();
  }
}
