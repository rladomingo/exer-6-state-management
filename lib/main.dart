import 'package:exer6_rladomingo/screen/Checkout.dart';
import 'package:flutter/material.dart';
import 'package:exer6_rladomingo/screen/MyCart.dart';
import 'package:exer6_rladomingo/screen/MyCatalog.dart';
import 'package:provider/provider.dart';
import 'package:exer6_rladomingo/provider/shoppingcart_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ShoppingCart()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/cart": (context) => const MyCart(),
        "/products": (context) => const MyCatalog(),
        "/checkout": (context) => const Checkout(),
      },
      home: const MyCatalog(),
    );
  }
}
