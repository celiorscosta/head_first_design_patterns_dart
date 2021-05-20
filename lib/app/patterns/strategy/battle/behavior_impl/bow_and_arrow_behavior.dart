import 'package:head_first_design_patterns_dart/app/patterns/strategy/battle/interfaces/weapon_behavior.dart';

class BowAndArrowBehavior implements WeaponBehavior {
  @override
  String useWeapon() {
    return 'atirando uma flecha com o arco.';
  }
}
