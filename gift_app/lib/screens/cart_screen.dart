import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../widgets/cart_item.dart' as ci;
import '../providers/order_provider.dart';
import '../screens/order_screen.dart';

class CartScreen extends StatelessWidget {
  static final routeName = 'cart-screen';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cart.itemCount > 0
          ? Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(15),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Total ',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Chip(
                          label: Text(
                            '\$${cart.totalAmount.toString()}',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                        FlatButton(
                          onPressed: () {
                            Provider.of<OrderProvider>(context, listen: false)
                                .addOrder(cart.items.values.toList(),
                                    cart.totalAmount);
                            cart.clear();

                            Navigator.of(context)
                                .pushNamed(OrderScreen.routeName);
                          },
                          child: Text(
                            'ADD GIFT',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: cart.itemCount,
                      itemBuilder: (context, i) => ci.CartItem(
                          cart.items.values.toList()[i].id,
                          cart.items.values.toList()[i].title,
                          cart.items.values.toList()[i].quantity,
                          cart.items.values.toList()[i].price)),
                ),
              ],
            )
          : Center(
              child: Text('No item added in the card'),
            ),
    );
  }
}
