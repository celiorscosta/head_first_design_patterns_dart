import 'package:head_first_design_patterns_dart/app/patterns/decorator/implementations/beverages/dark_roast.dart';
import 'package:head_first_design_patterns_dart/app/patterns/decorator/implementations/beverages/expresso.dart';
import 'package:head_first_design_patterns_dart/app/patterns/decorator/implementations/beverages/house_blend.dart';
import 'package:head_first_design_patterns_dart/app/patterns/decorator/implementations/condments/mocha.dart';
import 'package:head_first_design_patterns_dart/app/patterns/decorator/implementations/condments/soy.dart';
import 'package:head_first_design_patterns_dart/app/patterns/decorator/implementations/condments/whip.dart';
import 'package:head_first_design_patterns_dart/app/patterns/decorator/interfaces/beverage.dart';
import 'package:test/test.dart';

void main() {
  test('Teste decorator', () {
    Beverage beverageExpresso = Expresso();
    print('${beverageExpresso.getDescription()} \$ ${beverageExpresso.cost()}');

    Beverage beverageDarkRoast = DarkRoast();
    beverageDarkRoast = Mocha(beverageDarkRoast);
    beverageDarkRoast = Mocha(beverageDarkRoast);
    beverageDarkRoast = Whip(beverageDarkRoast);
    print(
      '${beverageDarkRoast.getDescription()} \$ ${beverageDarkRoast.cost()}',
    );

    Beverage beverageHouseBlend = HouseBlend();
    beverageHouseBlend = Soy(beverageHouseBlend);
    beverageHouseBlend = Mocha(beverageHouseBlend);
    beverageHouseBlend = Whip(beverageHouseBlend);
    print(
        '${beverageHouseBlend.getDescription()} \$ ${beverageHouseBlend.cost()}');
  });
}
