import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';
import '../providers/cart_provider.dart';

class OrderItem {
  late String id;
  late double price;
  late List<CartItem> products;
  late DateTime dateTime;

  OrderItem({
    required this.id,
    required this.price,
    required this.products,
    required this.dateTime,
  });
}

class OrderProvider with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) {
    _orders.insert(
        0,
        OrderItem(
            id: DateTime.now().toString(),
            price: total,
            products: cartProducts,
            dateTime: DateTime.now()));

    notifyListeners();
  }
}
