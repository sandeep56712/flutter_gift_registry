import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';
import '../widgets/product_list_item.dart';

class WishListScreen extends StatelessWidget {
  static final routeName = 'wishlist-screen';

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<ProductProvider>(context);
    final cateProduct = productData.getFavorite();

    return Scaffold(
      appBar: AppBar(
        title: Text('WishList'),
      ),
      drawer: AppDrawer(),
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
                'No Data Found!',
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
