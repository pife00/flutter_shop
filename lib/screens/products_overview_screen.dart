import 'package:flutter/material.dart';
import 'package:shop/providers/products.dart';
import 'package:shop/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsOverViewScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final loadedProduct = productsData.items;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
          childAspectRatio: 2 / 3
        ) ,
        itemCount: loadedProduct.length, 
        itemBuilder: (context,index) => ChangeNotifierProvider(
          create: (context) =>loadedProduct[index],
          child: ProductItem(),
        )
        
        ),
    );
  }
}