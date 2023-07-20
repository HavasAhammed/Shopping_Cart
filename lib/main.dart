import 'package:flutter/material.dart';
import 'package:grocery_cart/provider/cart_provider.dart';
import 'package:grocery_cart/screens/product_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(value: CartProvider(),
      )
    ],
    // ChangeNotifierProvider(
    //   create: (_) => CartProvider(),
      child: 
      // Builder(builder: (BuildContext context){
      //   return 
        MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Cart',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  const ProductListScreen(),
    )
      );
    
    
  }
}
 