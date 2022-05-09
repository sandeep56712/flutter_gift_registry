import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  late String id;
  late String title;
  late List<String> categories;
  late double price;
  late bool isFavorite;
  late String imageUrl;
  late String description;

  Product({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.description,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    print(isFavorite);
    notifyListeners();
  }
}
