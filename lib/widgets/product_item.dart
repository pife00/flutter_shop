import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/product.dart';
import 'package:shop/screens/product_details_screen.dart';

class ProductItem extends StatelessWidget {
 /*final String id;
 final String title;
 final String imageUrl;
 final double price;

  ProductItem(this.id, this.title, this.imageUrl, this.price);*/

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        header: GridTileBar(
          title: Text("\$${product.price}"),
          backgroundColor: Colors.black54,
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
            arguments: product.id
            );
          },
          child: Image.network(
            product.imageUrl,
            height: 160,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(
             product.isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              product.tooggleFavoriteStatus();
            },
          ),
          title: Text(
            product.title,
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
