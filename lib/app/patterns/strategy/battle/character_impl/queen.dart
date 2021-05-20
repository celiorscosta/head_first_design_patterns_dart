import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/behavior_impl/knife_behavior.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/interfaces/character.dart';

class Queen extends Character {
  Queen() {
    weaponBehavior = KnifeBehavior();
  }

  @override
  String fight() {
    return 'A rainha esta ${weaponBehavior.useWeapon()}';
  }
}
