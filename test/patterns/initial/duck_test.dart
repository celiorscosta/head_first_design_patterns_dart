import 'package:head_first_design_patterns_dart/app/patterns/strategy/01_initial/duck.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/01_initial/mallard_duck.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/01_initial/redhead_duck.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {});

  group('Testando Duck:', () {
    test('Testar MallardDuck', () {
      Duck duck = MallardDuck();
      expect(duck.quack(), equals('quack'));
      expect(duck.swim(), equals('swim'));
      expect(duck.display(), equals('Mallard parece um pato bravo!'));
    });

    test('Testar RedHeadDuck', () {
      Duck duck = RedHeadDuck();
      expect(duck.quack(), equals('quack'));
      expect(duck.swim(), equals('swim'));
      expect(duck.display(), equals('Parece um cabeça vermelha!'));
    });
  });
}
