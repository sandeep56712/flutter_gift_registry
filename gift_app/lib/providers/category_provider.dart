import 'package:flutter/material.dart';
import '../models/category.dart';
import '../dummy_data.dart';

class CategoryProvider with ChangeNotifier {
  List<Category> _items = dummyCategory;

  List<Category> get items {
    return [..._items];
  }
}
