import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/drink_tile.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:flutter_application_1/payment.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}
 class _CartPageState extends State<CartPage> {

  // remove drink from cart
  void removeFromCart(Drink drink) {
    Provider.of<BubbleMilkTeaShop>(context, listen: false).removeFromCart(drink);
  }





  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleMilkTeaShop>(builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          // heading
          const Text('Your Cart', style: TextStyle(fontSize:48,color: Colors.white ),
           ),
           const SizedBox(height: 10),       


           
          
          // list of cart items
          Expanded(
            child: ListView.builder(
              itemCount: value.cart.length,
              itemBuilder:(context, index) {
                // get individual drink in cart first
                Drink drink = value.cart[index];

                // return as a nece tile
                return DrinkTile(drink: drink, onTap: () => removeFromCart(drink),
                 trailing: Icon(Icons.delete),
                 );
              }
               
           ),
           ),
          
          // pay buttom
          MaterialButton(
            child:Text('PAY',
             style: TextStyle(color: Colors.white), 
             ) ,
            color: Colors.brown,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Payment()
              ),
              );
            } ,
          )
          
          
        ],),
      ),
    ),
    );
  }
 }