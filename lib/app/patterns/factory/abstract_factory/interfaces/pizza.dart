abstract class Pizza {
  late String _name;
  Dough dough;
  Sauce sauce;
  List<Veggies> veggies;
  Cheese cheese;
  Pepperoni pepperoni;
  Clam clam;

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

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  String toString() {
    return '';
  }
}
