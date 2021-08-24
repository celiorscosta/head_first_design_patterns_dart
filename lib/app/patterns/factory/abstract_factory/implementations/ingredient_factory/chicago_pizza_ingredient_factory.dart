class ChicagoPizzaIngredientFactory implements PizzaIngredientFactory {
  Cheese CreateCheese() {
    return MozzarellaCheese();
  }

  Clams CreateClam() {
    return FrozenClams();
  }

  Dough CreateDough() {
    return ThickCrustDough();
  }

  Pepperoni CreatePepperoni() {
    return SlicedPepperoni();
  }

  Sauce CreateSauce() {
    return PlumTomatoSauce();
  }

  List<Veggies> CreateVeggies() {
    var veggies = {BlackOlives(), Spinach(), Eggplant()};
    return veggies;
  }
}
