import 'package:flutter/material.dart';
import 'package:shop/screens/product_details_screen.dart';
import 'package:shop/screens/products_overview_screen.dart';

import 'package:provider/provider.dart';
import './providers/products.dart';

void main(List<String> args) {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>Products(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green[800],
          scaffoldBackgroundColor: Colors.grey[50]
        ),
        title: 'My Shop',
         home:ProductsOverViewScreen(),
         routes: {
           ProductDetailScreen.routeName: (context) =>ProductDetailScreen()
         },
      ),
    );
  }
}
