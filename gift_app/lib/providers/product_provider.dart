import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../models/product.dart';
import '../dummy_data.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _items = dummyProduct;

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  List<Product> getProductByCatId(String id) {
    return _items.where((product) {
      return product.categories.contains(id);
    }).toList();
  }

  List<Product> getProductByProductId(String id) {
    return _items.where((product) {
      return product.id == id;
    }).toList();
  }

  List<Product> getFavorite() {
    return _items.where((product) {
      return product.isFavorite;
    }).toList();
  }
}
