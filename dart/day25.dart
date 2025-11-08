void main() {
  List<Map<String, dynamic>> orders = [
    {"orderId": 1, "price": 1000, "percentageDiscount": 10, "fixedDiscount": 0},
    {
      "orderId": 2,
      "price": 1500,
      "percentageDiscount": 0,
      "fixedDiscount": 200,
    },
    {"orderId": 3, "price": 800, "percentageDiscount": 5, "fixedDiscount": 100},
    {"orderId": 4, "price": 500, "percentageDiscount": 0, "fixedDiscount": 0},
  ];

  for (int i = 0; i < orders.length; i++) {
    int orderId = orders[i]["orderId"];
    double price = orders[i]["price"].toDouble();
    double percentageDiscount = orders[i]["percentageDiscount"].toDouble();
    double fixedDiscount = orders[i]["fixedDiscount"].toDouble();

    double finalPrice = price;
    if (percentageDiscount > 0 && fixedDiscount > 0) {
      print(
        "Order $orderId →  Invalid: Cannot apply both percentage and fixed discount together!",
      );
    } else if (percentageDiscount > 0 && fixedDiscount == 0) {
      double discountAmount = (price * percentageDiscount) / 100;
      finalPrice = price - discountAmount;
      print(
        "Order $orderId → Percentage discount applied: $percentageDiscount% | Final Price: ₹$finalPrice",
      );
    } else if (fixedDiscount > 0 && percentageDiscount == 0) {
      finalPrice = price - fixedDiscount;
      print(
        "Order $orderId → Fixed discount applied: ₹$fixedDiscount | Final Price: ₹$finalPrice",
      );
    } else {
      print("Order $orderId → No discount applied | Final Price: ₹$finalPrice");
    }
  }
}
