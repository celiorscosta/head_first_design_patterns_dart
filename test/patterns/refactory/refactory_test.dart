import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/behavior/squeak.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/ducks/redhead_duck.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/interfaces/duck.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/behavior/fly_with_wings.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/ducks/mallard_duck.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/refactory/behavior/quack.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {});

  group('03 - Duck:', () {
    test('Testar MallardDuck', () {
      Duck duck = MallardDuck();
      duck.setFlyBehavior(FlyWithWings());
      duck.setQuackBehavior(Quack());

      expect(duck.performFly(), 'Patos voando');
      expect(duck.performQuack(), 'grasnar');
      expect(duck.swim(), 'nadar');
      expect(duck.display(), equals('Mallard parece um pato bravo!'));
    });

    test('Testar RedHeadDuck', () {
      Duck duck = RedHeadDuck();
      duck.setFlyBehavior(FlyWithWings());
      duck.setQuackBehavior(Squeak());

      expect(duck.performFly(), 'Patos voando');
      expect(duck.performQuack(), 'guinchar');
      expect(duck.swim(), 'nadar');
      expect(duck.display(), equals('Parece um cabeça vermelha!'));
      duck.setQuackBehavior(Quack());
      expect(duck.performQuack(), 'grasnar');
    });
  });
}
