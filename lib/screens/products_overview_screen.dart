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
      body:GridView.count(
        primary: false,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children:loadedProduct.map((el){
          return ProductItem(el.id,el.title,el.imageUrl,el.price);
        }).toList() ,
        ) ,
    );
  }
}