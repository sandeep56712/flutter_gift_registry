import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/app_drawer.dart';
import '../widgets/order_item.dart';
import '../providers/order_provider.dart';

class OrderScreen extends StatelessWidget {
  static final routeName = 'order-screen';

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<OrderProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Gift Registry'),
      ),
      drawer: AppDrawer(),
      body: orderData.orders.length > 0
          ? ListView.builder(
              itemCount: orderData.orders.length,
              itemBuilder: (ctx, i) => OrderItems(orderData.orders[i]),
            )
          : Center(
              child: Text(
                'No Data Found!',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 24,
                    color: Theme.of(context).primaryColor),
                textAlign: TextAlign.center,
              ),
            ),
    );
  }
}
