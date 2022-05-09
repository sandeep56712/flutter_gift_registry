import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  late String id;
  late String title;
  late int qty;
  late double price;

  CartItem(this.id, this.title, this.qty, this.price);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 15,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: EdgeInsets.all(2),
              child: FittedBox(
                child: Text(
                  '\$${price}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
          title: Text(title),
          subtitle: Text('Total : \$${price * qty}'),
          trailing: Text('\$${qty}  X'),
        ),
      ),
    );
  }
}
