import 'package:basic_widget/counter_screen.dart';
import 'package:basic_widget/detail_product.dart';
import 'package:basic_widget/register_screen.dart';
import 'package:flutter/material.dart';

import 'product_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Inter'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => RegisterScreen(),
        '/product-list' : (context) => ProductListScreen(),
        '/detail-product' : (context) => DetailProduct(),
        '/counter' : (context) => CounterScreen()
      },
    );
  }
}
