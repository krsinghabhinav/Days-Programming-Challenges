void main() {
  List<List<Map<String, dynamic>>> allCarts = [
    [
      {'name': 'Cap', 'price': 200, 'weight': 0.4},
      {'name': 'Socks', 'price': 300, 'weight': 0.3},
    ],
    [
      {'name': 'T-shirt', 'price': 400, 'weight': 0.8},
      {'name': 'Shoes', 'price': 700, 'weight': 1.0},
    ],
    [
      {'name': 'Jacket', 'price': 600, 'weight': 1.8},
      {'name': 'Bag', 'price': 300, 'weight': 1.5},
    ],
    [
      {'name': 'Dumbbell', 'price': 800, 'weight': 3.0},
    ],
    [
      {'name': 'Watch', 'price': 600, 'weight': 1.2},
      {'name': 'Perfume', 'price': 500, 'weight': 1.3},
    ],
    [
      {'name': 'Watch', 'price': 500, 'weight': 0.6},
      {'name': 'Perfume', 'price': 500, 'weight': 0.3},
    ],
  ];

  for (int i = 0; i < allCarts.length; i++) {
    print('\nCart ${i + 1}');
    calculateShipping(allCarts[i]);
  }
}

void calculateShipping(List<Map<String, dynamic>> cart) {
  num totalPrice = 0;
  num totalWeight = 0;

  for (var item in cart) {
    totalPrice += item['price'];
    totalWeight += item['weight'];
  }

  num shippingCost;

  if (totalPrice >= 1000) {
    if (totalWeight < 1) {
      shippingCost = 0;
    } else if (totalWeight >= 1 && totalWeight <= 2) {
      shippingCost = 50;
    } else {
      shippingCost = 100;
    }
  } else {
    if (totalWeight < 1) {
      shippingCost = 0;
    } else if (totalWeight >= 1 && totalWeight <= 2) {
      shippingCost = 50;
    } else {
      shippingCost = 100;
    }
  }

  print('Total Price: ₹$totalPrice');
  print('Total Weight: ${totalWeight.toStringAsFixed(2)} kg');
  print('Shipping Cost: ₹$shippingCost');
  print('Final Total: ₹${totalPrice + shippingCost}');
}
