class PriceCalculator {
   double totalAmount;
   bool isStudent;
   bool hasVoucher;
   bool isLoyalCustomer;

   PriceCalculator(this.totalAmount, this.isStudent, this.hasVoucher, this.isLoyalCustomer);

   void calculateDiscount() {
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
  
      double totalDiscount = discount;
      if (totalAmount > 200) {
        totalDiscount += 5.0;
      }
  
      double finalPrice = totalAmount * ((100 - totalDiscount) / 100);
  
      String discountCategory;
      if (totalDiscount > 15) {
        discountCategory = "Super Spar-Deal!";
      } else if (totalDiscount > 0) {
        discountCategory = "Normaler Rabatt";
      } else {
        discountCategory = "Standardpreis";
      }
  
      print("Gesamtbetrag: ${totalAmount.toStringAsFixed(2)}€");
      print("Rabatt: $totalDiscount%");
      print("Preis nach Rabatt: ${finalPrice.toStringAsFixed(2)}€");
      print("Rabattkategorie: $discountCategory");
   }
}

void main() {
  var customer1 = PriceCalculator(150, true, false, false);
  customer1.calculateDiscount();
  print("----------");
  var customer2 = PriceCalculator(250, false, true, true);
  customer2.calculateDiscount();
}
