import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/category_provider.dart';
import '../providers/product_provider.dart';
import '../providers/cart_provider.dart';
import '../providers/order_provider.dart';
import '../screens/order_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  static final routeName = 'product-details';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedProduct =
        Provider.of<ProductProvider>(context).findById(productId);
    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(selectedProduct.title),
          // actions: [
          //   IconButton(
          //     onPressed: () {
          //       cart.addItem(selectedProduct.id, selectedProduct.title,
          //           selectedProduct.price);

          //       Provider.of<OrderProvider>(context, listen: false)
          //           .addOrder(cart.items.values.toList(), cart.totalAmount);
          //       cart.clear();
          //       Navigator.of(context).pushNamed(OrderScreen.routeName);
          //     },
          //     icon: Icon(
          //       Icons.shopping_cart_checkout,
          //       color: Colors.white,
          //     ),
          //   ),
          // ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Hero(
                  tag: selectedProduct.id,
                  child: Image.network(
                    selectedProduct.imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      selectedProduct.title,
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '\$${selectedProduct.price.toString()}',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text(
                selectedProduct.description,
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  color: Theme.of(context).primaryColor,
                  child: FlatButton(
                    onPressed: () {
                      cart.addItem(selectedProduct.id, selectedProduct.title,
                          selectedProduct.price);

                      Provider.of<OrderProvider>(context, listen: false)
                          .addOrder(
                              cart.items.values.toList(), cart.totalAmount);
                      cart.clear();
                      Navigator.of(context).pushNamed(OrderScreen.routeName);
                    },
                    child: Text(
                      'Add To Gift Registry',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
