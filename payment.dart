import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/drink_tile.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}
 class _PaymentState extends State<Payment> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.brown.shade300,
      body:  Padding(
        
        padding: const EdgeInsets.all(25.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
          // heading
          const Text('โปรดสแกนคิวอาร์โค้ด', style: TextStyle(fontSize:40 ,color:Colors.white ),
           ),
           const SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('asset/IMG_5622.jpg',height: 450,),
              ],
            ),           
          
        ],),
      ),
    );
    
  }
 }