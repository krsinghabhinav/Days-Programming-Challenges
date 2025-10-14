void main() {
  String countryName = "USA";
  double price = 1000;
  double finalPrice = price;

  if (countryName == "India") {
    double gst = price * 0.18;
    finalPrice = price + gst;
    print("In Country:$countryName");
    print(("Applied Tax: GST(18%)"));
    print("Final Price: $finalPrice");
  } else if (countryName == "France" ||
      countryName == "Germany" ||
      countryName == "Italy" ||
      countryName == "Spain") {
    double vat = price * 0.20;
    finalPrice = price + vat;
    print('🇪🇺 Country: $countryName');
    print('Applied Tax: VAT (20%)');
    print('Final Price: €$finalPrice');
  } else {
    print('Country: $countryName');
    print('No tax applied.');
    print('Final Price: $finalPrice');
  }
}
