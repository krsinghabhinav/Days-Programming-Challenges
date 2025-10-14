import 'dart:math';

void main() {
  List<double> prices = [5.432, 9.987, 10.245, 25.678, 3.111];

  for (int i = 0; i < prices.length; i++) {
    double price = prices[i];

    if (price < 10) {
      double roundedUp = (price * 100).ceil() / 100;
      print(
        "Price ${i + 1}: ₹$price → Rounded UP to ₹${roundedUp.toStringAsFixed(2)}",
      );
    } else {
      double normalRound = double.parse(price.toStringAsFixed(2));
      print(
        "Price ${i + 1}: ₹$price → Normally Rounded ₹${normalRound.toStringAsFixed(2)}",
      );
    }
  }
}
