import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/pizza_store_factory/chicago_pizza_store.dart';
import 'package:head_first_design_patterns_dart/app/patterns/factory/factory_methods/pizza_store_factory/ny_pizza_store.dart';
import 'package:test/test.dart';

void main() {
  test('Test factory methods', () async {
    var nyStore = NYPizzaStore();
    var chicagoStore = ChicagoPizzaStore();

    var pizza = nyStore.OrderPizza('cheese');
    print('Ethan ordered a  $pizza');

    pizza = chicagoStore.OrderPizza('cheese');
    print('Joel ordered a $pizza');

    pizza = nyStore.OrderPizza('clam');
    print('Ethan ordered a $pizza ');

    pizza = chicagoStore.OrderPizza('clam');
    print('Joel ordered a $pizza');

    pizza = nyStore.OrderPizza('pepperoni');
    print('Ethan ordered a $pizza');

    pizza = chicagoStore.OrderPizza('pepperoni');
    print('Joel ordered a $pizza');

    pizza = nyStore.OrderPizza('veggie');
    print('Ethan ordered a $pizza');

    pizza = chicagoStore.OrderPizza('veggie');
    print('Joel ordered a $pizza');
  });
}
