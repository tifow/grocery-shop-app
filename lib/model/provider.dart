import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartModel extends ChangeNotifier {
  // list of items
  final List _shopItem = [
    // {item name} {item price}  {item image path}  {item color}
    ["pear", "5.00", "images/pear.png", Colors.amber[300]],
    ["pineapple", "8.00", "images/pineapple.png", Colors.amber[200]],
    ["raspderry", "2.00", "images/raspberry.png", Colors.red[300]],
    ["watermelon", "4.00", "images/watermelon.png", Colors.amber[300]],
  ];
  //List of the cart items
  final List _cartItem = [];

  get shopItem => _shopItem;

  get cartItem => _cartItem;

  // add cart to the item
  void addingItemToCart(int index) {
    _cartItem.add(_shopItem[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItem.removeAt(index);
    notifyListeners();
  }

  // calculate the total price
  String calcutator() {
    double total = 0;
    for (int i = 0; i < cartItem.length; i++) {
      total += double.parse(_cartItem[i][1]);
    }
    return total.toStringAsFixed(2);
  }
}
