import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/drink_tile.dart';
import 'package:flutter_application_1/models/drink.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:flutter_application_1/pages/order_page.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // user selected a drink, go to order page
  void goToOrderPage(Drink drink) {
    // navigate to order page
    Navigator.push(
      context,
     MaterialPageRoute(
      builder:(context) => OrderPage(
       drink: drink,  
      ),
    ),
  );
  }



  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleMilkTeaShop>( 
      builder: (context, value, child) =>  SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            //heading
            Text(
              "Bubble Tea Milk Shop", 
            style: TextStyle(fontSize: 48,color: Colors.white ),
            ),

            const SizedBox(height: 10),

            // list of drinks for sale
            Expanded(
              child: ListView.builder(
              itemCount: value.shop.length ,
              itemBuilder: (context, index)  {
               // get individual drink from 
               Drink individualDrink = value.shop[index];

               // return that drink as a nice tile
               return DrinkTile(drink: individualDrink, 
               onTap: () => goToOrderPage(individualDrink) ,
               trailing: Icon(Icons.arrow_forward),
               );
              },

            ),
          )     
          ],         
        ),
      ),
      ),
    );
  }
}