import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/behavior_impl/knife_behavior.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/interfaces/character.dart';

class Knight extends Character {
  Knight() {
    weaponBehavior = KnifeBehavior();
  }

  @override
  String fight() {
    return 'O cavaleiro esta ${weaponBehavior.useWeapon()}';
  }
}
