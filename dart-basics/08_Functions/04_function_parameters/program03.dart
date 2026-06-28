// default parameter

// here these parameters are optional named parameters and 
// same can be applied on optional positional parameters.

void orderPizza({
  String size = "Medium",
  String crust = "Thin",
  int quantity = 1,
}) {
  print("Pizza Order");
  print("Size: $size");
  print("Crust: $crust");
  print("Quantity: $quantity");
  print("------------------");
}

void main() {
  orderPizza();

  orderPizza(size: "Large");

  orderPizza(
    size: "Small",
    crust: "Cheese Burst",
    quantity: 3,
  );
}

