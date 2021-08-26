import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/factory_methods/chicago_pizza_store.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/abstract_factory/factory_methods/ny_pizza_store.dart';
import 'package:test/test.dart';

void main() {
  test('Abstract Factory test', () {
    var nyStore = NYPizzaStore();
    var chicagoStore = ChicagoPizzaStore();

    var pizza = nyStore.OrderPizza(type: 'cheese');
    print('Ethan ordered a $pizza');
    print('\n----------------------//----------------------\n');

    pizza = chicagoStore.OrderPizza(type: 'cheese');
    print('Joel ordered a $pizza');
    print('\n----------------------//----------------------\n');

    pizza = nyStore.OrderPizza(type: 'clam');
    print('Ethan ordered a a $pizza');
    print('\n----------------------//----------------------\n');

    pizza = chicagoStore.OrderPizza(type: 'clam');
    print('Joel ordered a $pizza');
    print('\n----------------------//----------------------\n');

    pizza = nyStore.OrderPizza(type: 'pepperoni');
    print('Ethan ordered a $pizza');
    print('\n----------------------//----------------------\n');

    pizza = chicagoStore.OrderPizza(type: 'pepperoni');
    print('Joel ordered a $pizza');
    print('\n----------------------//----------------------\n');

    pizza = nyStore.OrderPizza(type: 'veggie');
    print('Ethan ordered a $pizza');
    print('\n----------------------//----------------------\n');

    pizza = chicagoStore.OrderPizza(type: 'veggie');
    print('Joel ordered a $pizza');
    print('\n----------------------//----------------------\n');
  });
}
