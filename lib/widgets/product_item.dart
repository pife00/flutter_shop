import 'package:flutter/material.dart';
import 'package:shop/screens/product_details_screen.dart';

class ProductItem extends StatelessWidget {
  String id;
  String title;
  String imageUrl;
  double price;

  ProductItem(this.id, this.title, this.imageUrl, this.price);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        header: GridTileBar(
          title: Text("\$$price"),
          backgroundColor: Colors.black54,
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
            arguments: id
            );
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
