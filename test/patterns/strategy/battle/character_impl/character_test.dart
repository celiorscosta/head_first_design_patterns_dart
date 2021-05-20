import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/behavior_impl/axe_behavior.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/behavior_impl/bow_and_arrow_behavior.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/behavior_impl/knife_behavior.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/behavior_impl/sword_behavior.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/character_impl/king.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/character_impl/knight.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/character_impl/queen.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/character_impl/troll.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/interfaces/character.dart';
import 'package:test/test.dart';

void main() {
  setUp(() {});

  group('Battle:', () {
    test('Testar King', () {
      Character character = King();
      print(character.fight());
      expect(character.fight(), equals('O rei esta manuseando uma espada.'));
      character.setWeaponBehavior(AxeBehavior());
      print(character.fight());
      expect(character.fight(), equals('O rei esta cortando com um machado.'));
    });

    test('Testar Queen', () {
      Character character = Queen();
      print(character.fight());
      expect(character.fight(), equals('A rainha esta cortando com uma faca.'));
      character.setWeaponBehavior(BowAndArrowBehavior());
      print(character.fight());
      expect(character.fight(),
          equals('A rainha esta atirando uma flecha com o arco.'));
    });

    test('Testar Knight', () {
      Character character = Knight();
      print(character.fight());
      expect(
          character.fight(), equals('O cavaleiro esta cortando com uma faca.'));
      character.setWeaponBehavior(SwordBehavior());
      print(character.fight());
      expect(
          character.fight(), equals('O cavaleiro esta manuseando uma espada.'));
    });

    test('Testar Troll', () {
      Character character = Troll();
      print(character.fight());
      expect(character.fight(), equals('O Troll esta cortando com uma faca.'));
      character.setWeaponBehavior(BowAndArrowBehavior());
      character.setWeaponBehavior(AxeBehavior());
      print(character.fight());
      expect(
          character.fight(), equals('O Troll esta cortando com um machado.'));
    });
  });
}
