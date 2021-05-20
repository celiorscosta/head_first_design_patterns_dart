import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/behavior_impl/sword_behavior.dart';
import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/interfaces/character.dart';

class King extends Character {
  King() {
    weaponBehavior = SwordBehavior();
  }

  @override
  String fight() {
    return 'O rei esta ${weaponBehavior.useWeapon()}';
  }
}
