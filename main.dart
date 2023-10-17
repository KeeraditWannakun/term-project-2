import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create:(context) => BubbleMilkTeaShop(), 
      builder: (context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:ThemeData(primarySwatch: Colors.brown ),
        home: HomePage(),
      ) ,
     );
  }
}
     