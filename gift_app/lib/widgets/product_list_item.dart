import 'package:flutter/material.dart';
import '../screens/product_details_screen.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../providers/cart_provider.dart';

class ProductListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    final cart = Provider.of<CartProvider>(context);

    return Container(
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: InkWell(
                      onTap: (() => Navigator.of(context).pushNamed(
                          ProductDetailScreen.routeName,
                          arguments: product.id)),
                      child: Hero(
                        tag: product.id,
                        child: Image.network(
                          product.imageUrl,
                          fit: BoxFit.contain,
                          height: 220,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 220,
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Text(
                        product.title,
                        style: TextStyle(fontSize: 24, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(0),
                // color: Colors.amber,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: product.isFavorite
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_border),
                        color: Colors.deepOrange,
                        iconSize: 35,
                        onPressed: () {
                          Provider.of<Product>(context, listen: false)
                              .toggleFavoriteStatus();
                        },
                      ),
                      Text(
                        '\$${product.price}',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        iconSize: 35,
                        color: Theme.of(context).primaryColor,
                        onPressed: () {
                          cart.addItem(
                              product.id, product.title, product.price);

                          Scaffold.of(context).hideCurrentSnackBar();
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Item Added to cart',
                                textAlign: TextAlign.center,
                              ),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                      ),
                    ]),
              ),
            ],
          )),
    );
  }
}
