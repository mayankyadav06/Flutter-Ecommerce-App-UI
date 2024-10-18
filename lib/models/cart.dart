import 'package:ecommerce_app_ui/models/shoe_item.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //  Availaible Shoes List
  final List<ShoeItem> shoeList = [
    ShoeItem(
        name: "Air Jordan",
        price: "Rs. 11,000",
        imagePath: "assets/images/air_jordan.png",
        description: "Nike Air Jordan Description"),
    ShoeItem(
        name: "Court Vision",
        price: "Rs. 11,000",
        imagePath: "assets/images/court_vision.png",
        description: "Nike Court Vision Description"),
    ShoeItem(
        name: "Nike Go Fly",
        price: "Rs. 11,000",
        imagePath: "assets/images/nike_go_fly.png",
        description: "Nike Go Fly Description"),
    ShoeItem(
        name: "Nike Revolution",
        price: "Rs. 11,000",
        imagePath: "assets/images/nike_revolution.png",
        description: "Nike Revolution Description"),
  ];

  // User cart to add the shoes
  List<ShoeItem> userCart = [];

  // Get the shoes list to show in home page 
  List<ShoeItem> getShoeList() {
    return shoeList;
  }
  // Get the user cart list to show the shoes in the cart page
  List<ShoeItem> getUserCart() {
    return userCart;
  }
  // Add the shoe to cart
  void addToCart(ShoeItem shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  // Remove the shoe from the cart
  void removeFromCart(ShoeItem shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
