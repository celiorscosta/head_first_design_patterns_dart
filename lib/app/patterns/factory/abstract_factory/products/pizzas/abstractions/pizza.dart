import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/products/ingredients/abstractions/exports.dart';

abstract class Pizza {
  late String name;
  late Dough dough;
  late Sauce sauce;
  late List<Veggies> veggies;
  late Cheese cheese;
  late Pepperoni pepperoni;
  late Clams clam;

  void prepare();

  void bake() {
    print('Bake for 25 minutes at 350');
  }

  void cut() {
    print('Cutting the pizza into diagonal slices');
  }

  void box() {
    print('Place pizza in official PizzaStore box');
  }
}
