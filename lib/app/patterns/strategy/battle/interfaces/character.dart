import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/interfaces/weapon_behavior.dart';

abstract class Character {
  WeaponBehavior weaponBehavior;

  void setWeaponBehavior(WeaponBehavior wb) {
    weaponBehavior = wb;
  }

  String fight();
}
