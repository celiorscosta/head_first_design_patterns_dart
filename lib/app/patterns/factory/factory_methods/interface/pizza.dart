abstract class Pizza {
  late String name;

  void prepare() {
    print('Preparing $name');
  }

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
