import 'package:head_first_design_patterns_dart/app/patterns/strategy/02_first_demand/duck.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/02_first_demand/mallard_duck.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/02_first_demand/redhead_duck.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/02_first_demand/rubber_duck.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {});

  group('02 - Duck:', () {
    test('Testar MallardDuck', () {
      Duck duck = MallardDuck();
      expect(duck.quack(), equals('quack'));
      expect(duck.swim(), equals('swim'));
      expect(duck.fly(), equals('fly'));
      expect(duck.display(), equals('Mallard parece um pato bravo!'));
    });

    test('Testar RedHeadDuck', () {
      Duck duck = RedHeadDuck();
      expect(duck.quack(), equals('quack'));
      expect(duck.swim(), equals('swim'));
      expect(duck.fly(), equals('fly'));
      expect(duck.display(), equals('Parece um cabeça vermelha!'));
    });

    test('Testar RubberDuck', () {
      Duck duck = RubberDuck();
      expect(duck.quack(), equals('quack'));
      expect(duck.swim(), equals('swim'));
      expect(duck.fly(), equals('fly'));
      expect(duck.display(), equals('Pato de borracha!'));
    });
  });
}
