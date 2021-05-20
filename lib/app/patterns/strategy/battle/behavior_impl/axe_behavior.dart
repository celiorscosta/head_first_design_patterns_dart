import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/interfaces/weapon_behavior.dart';

class AxeBehavior implements WeaponBehavior {
  @override
  String useWeapon() {
    return 'cortando com um machado.';
  }
}
