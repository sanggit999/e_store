import 'package:flutter/cupertino.dart';

class MyPricingCalculator {

  // Calculator price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }


  static String calculateShippingCost(double productPrice,String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(3);
  }

  static String calculateTax(double productPrice,String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(3);
  }
  static double getTaxRateForLocation(String location) {
    return 0.10;  // Tax rate of 10%
  }

  static double getShippingCost(String location) {
    return 5.000; // Shipping cost for 5000
  }
}
