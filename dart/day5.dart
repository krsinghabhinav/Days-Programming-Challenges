void main() {
  List<Map<String, dynamic>> promoCodes = [
    {
      'code': 'SAVE10',
      'expiry': '2025-10-10',
      'usedBy': ['user2', 'user3'],
    },
    {'code': 'NEW50', 'expiry': '2025-09-30', 'usedBy': []},
    {
      'code': 'FESTIVE20',
      'expiry': '2025-12-01',
      'usedBy': ['user1'],
    },
  ];

  String enteredCode = "HELLO100";
  String currentUser = "user1";
  String date = "2025-09-30";
  bool isValid = false;

  for (int i = 0; i < promoCodes.length; i++) {
    var promo = promoCodes[i];
    if (promo["code"] == enteredCode) {
      if (date.compareTo(promo["expiry"]) <= 0) {
        bool alreadyUsed = false;

        for (int j = 0; j < promo["usedBy"].length; j++) {
          var user = promo["usedBy"][j];
          if (user == currentUser) {
            alreadyUsed = true;
          }
        }

        if (alreadyUsed == false) {
          print(' Promo applied successfully User ${currentUser}!');
          isValid = true;
        } else {
          print('You have already used this promo code.');
        }
      } else {
        print('Promo code expired.');
      }
    }
  }

  if (isValid == false) {
    print('Promo code not valid or expired.');
  }
}
