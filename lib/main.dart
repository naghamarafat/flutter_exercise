import 'package:flutter/material.dart';
import 'package:flutter_exercise3/cart.dart';
import 'package:flutter_exercise3/cart2.dart';
import 'package:flutter_exercise3/home.dart';
import 'package:flutter_exercise3/order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
        Cart2Page()
     //CartPage()
      //OrderPage(),
     // HomePage(),
    );
  }
}


