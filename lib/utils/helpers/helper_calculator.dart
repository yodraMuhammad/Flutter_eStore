class THelperCalculator {
  // -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // -- Calculate Tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Look the tax rate for the given location from a tax rate datebase or API
    // Return the appropriate tax rate
    return 0.10; // Example tax rate of 10%
  }

  static double getShippingCost(String location) {
    // Look the shiiping cost for the given location using shipping rate API
    // Calcaulate the shipping coast based on various factors like distance, weight, etc.
    return 5.00; // Example shiping coast of &5
  }

  // -- Sum all cart values and return total amount
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold.(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
