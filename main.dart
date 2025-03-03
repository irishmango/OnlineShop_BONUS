void main() {
  calculateDiscount(150, true, false, false);
  print(""); 
  calculateDiscount(250, false, true, true);
}

void calculateDiscount(double totalAmount, bool isStudent, bool hasVoucher, bool isLoyalCustomer) {
  double discount = 0.0;

  if (isStudent) {
    discount = 5.0;
  }
  if (isLoyalCustomer && 10.0 > discount) {
    discount = 10.0;
  }
  if (hasVoucher && 15.0 > discount) {
    discount = 15.0;
  }

  double totalDiscount = discount; // Start with the highest discount
  if (totalAmount > 200) {
    totalDiscount += 5.0;
  }

  double finalPrice = totalAmount * ((100 - discount) / 100);

  String discountCategory;
  if (totalDiscount > 15) {
    discountCategory = "Super Spar-Deal!";
  } else if (totalDiscount > 0) {
    discountCategory = "Normaler Rabatt";
  } else {
    discountCategory = "Standardpreis";
  }

  print("Gesamtbetrag: ${totalAmount.toStringAsFixed(2)}€");
  print("Rabatt: $discount%");
  print("Endpreis nach Rabatt: ${finalPrice.toStringAsFixed(2)}€");
  print("Rabattkategorie: $discountCategory");
}