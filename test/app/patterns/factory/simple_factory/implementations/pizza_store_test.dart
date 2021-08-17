import 'package:head_first_design_patterns_dart/app/patterns/factory/simple_factory/factory/simple_pizza_factory.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/simple_factory/implementations/pizza_store.dart';
import 'package:test/test.dart';

void main() {
  test('pizza store ...', () async {
    var factory = SimplePizzaFactory();
    var store = PizzaStore(factory);

    var pizza = store.OrderPizza('cheese');
    print('We ordered a ${pizza.name}');

    pizza = store.OrderPizza('veggie');
    print('We ordered a ${pizza.name}');

    pizza = store.OrderPizza('clam');
    print('We ordered a ${pizza.name}');

    pizza = store.OrderPizza('pepperoni');
    print('We ordered a ${pizza.name}');
  });
}
