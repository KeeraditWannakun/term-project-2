import 'package:flutter/material.dart';

import 'drink.dart';

class BubbleMilkTeaShop extends ChangeNotifier{
  // list of drinks for sale
  final List<Drink> _shop = [
       // Bubble Green Tea
       Drink(
        name: " Green Tea",
        price: "30.00฿",
        imagePath: "asset/green-tea.png"
       ),

        // Pear milk Tea
        Drink(
        name: "Pear milk Tea",
        price: "35.00฿",
        imagePath: "asset/bubble-tea.png"
       ),

       // Choco Tea
       Drink(
        name: "Choco Tea",
        price: "40.00฿",
        imagePath: "asset/chocoo.png"
       ),

       // Taro Milk Tea
       Drink(
        name: "Taro Milk Tea",
        price: "30.00฿",
        imagePath: "asset/boba.png"
       ),

       // Almond Milk Tea
       Drink(
        name: "Almond Milk Tea",
        price: "45.00฿",
        imagePath: "asset/almond.png"
       ),

       // Chocolate Bubble Milk Tea
       Drink(
        name: "Chocolate Bubble Milk Tea",
        price: "45.00฿",
        imagePath: "asset/chocolate.png"
       ),           
  ];
      
      

  
   


  // list of drinks in user cart
  final List<Drink> _userCart = [];

  // get drinks for sale
  List<Drink> get shop => _shop;

  // get user cart
    List<Drink> get cart => _userCart;

  // add drink to cart
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }
  // remove drink from cart
  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }

}
