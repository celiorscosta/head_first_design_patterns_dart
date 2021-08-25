import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/factories/abstractions/pizza_ingredient_factory.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/abstractions/exports.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/black_olives.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/egg_plant.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/frozen_clams.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/mozzarella_cheese.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/plum_tomato_sauce.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/sliced_pepperoni.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/spinach.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/thick_crust_dough.dart';

class ChicagoPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  Cheese createCheese() {
    return MozzarellaCheese();
  }

  @override
  Clams createClam() {
    return FrozenClams();
  }

  @override
  Dough createDough() {
    return ThickCrustDough();
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Sauce createSauce() {
    return PlumTomatoSauce();
  }

  @override
  List<Veggies> createVeggies() {
    var veggies = <Veggies>[BlackOlives(), Spinach(), Eggplant()];
    return veggies;
  }
}
