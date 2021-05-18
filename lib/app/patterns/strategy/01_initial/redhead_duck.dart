import 'package:head_first_design_patterns_dart/app/patterns/strategy/01_initial/duck.dart';

class RedHeadDuck extends Duck {
  @override
  String display() {
    return 'Parece um cabeça vermelha!';
  }
}
