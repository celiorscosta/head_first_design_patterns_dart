import 'package:head_first_design_patterns_dart/app/patterns/decorator/interfaces/beverage.dart';

abstract class CondimentDecorator extends Beverage {
  @override
  String getDescription();
}
