void main() {
  List<Map<String, dynamic>> stores = [
    {
      "storeName": "Store A",
      "salesRecords": [
        {"month": "Jan", "amount": 5000},
        {"month": "Feb", "amount": 7000},
        {"month": "Mar", "amount": 4000},
      ],
    },
    {
      "storeName": "Store B",
      "salesRecords": [
        {"month": "Jan", "amount": 8000},
        {"month": "Feb", "amount": 6000},
        {"month": "Mar", "amount": 9000},
      ],
    },
    {
      "storeName": "Store C",
      "salesRecords": [
        {"month": "Jan", "amount": 3000},
        {"month": "Feb", "amount": 2000},
        {"month": "Mar", "amount": 4000},
      ],
    },
  ];

  String topStore = "";
  num highestSale = 0;
  for (int i = 0; i < stores.length; i++) {
    final store = stores[i];
    List<Map<String, dynamic>> records = store["salesRecords"];

    num totalAmount = 0;
    for (int j = 0; j < records.length; j++) {
      totalAmount = totalAmount + records[j]["amount"];
    }

    if (totalAmount > highestSale) {
      highestSale = totalAmount;
      topStore = store["storeName"];
    }
  }
  print("\nStore with highest yearly sale: $topStore ($highestSale)");
}
