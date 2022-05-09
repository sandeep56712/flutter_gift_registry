import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../dummy_data.dart';
import '../widgets/product_list_item.dart';
import '../providers/product_provider.dart';
import '../screens/cart_screen.dart';

class ProductListScreen extends StatelessWidget {
  static final routeName = 'product-list';
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'] as String;
    final categoryTitle = routeArgs['title'] as String;

    final productData = Provider.of<ProductProvider>(context);
    final cateProduct = productData.getProductByCatId(categoryId);

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(CartScreen.routeName);
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: cateProduct.length > 0
          ? ListView.builder(
              itemCount: cateProduct.length,
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                value: cateProduct[i],
                child: ProductListItem(),
              ),
            )
          : Center(
              child: Text(
                'This category has no products please visit another category',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 25,
                    color: Theme.of(context).primaryColor),
                textAlign: TextAlign.center,
              ),
            ),
    );
  }
}
