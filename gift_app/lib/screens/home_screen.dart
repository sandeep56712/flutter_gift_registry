import 'package:flutter/material.dart';
import 'package:gift_app/models/product.dart';
import 'package:gift_app/screens/product_list_screen.dart';
import 'package:provider/provider.dart';
import '../models/category.dart';
import '../widgets/category_item.dart';
import '../dummy_data.dart';
import '../widgets/category_grid.dart';
import '../screens/cart_screen.dart';
import '../widgets/app_drawer.dart';
import '../widgets/product_list_item.dart';
import '../providers/product_provider.dart';

class HomeScreen extends StatelessWidget {
  final List<Category> loadedCategory = dummyCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(CartScreen.routeName);
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: CategoryGrid(),
    );
  }
}

//For Search bar delegates

class MySearchDelegate extends SearchDelegate {
  var selectedCat = '';

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        selectedCat = '';
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    if (!selectedCat.isEmpty) {
      final productData = Provider.of<ProductProvider>(context);
      final cateProduct = productData.getProductByProductId(selectedCat);
      selectedCat = '';
      return ListView.builder(
        itemCount: cateProduct.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: cateProduct[i],
          child: ProductListItem(),
        ),
      );
    }
    return Center(
      child: Text('Data Not Found!'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final products = query.isEmpty
        ? dummyProduct
        : dummyProduct
            .where(
                (pr) => pr.title.toLowerCase().startsWith(query.toLowerCase()))
            .toList();

    print('Suggestion...${products.length}');
    return products.isEmpty
        ? Center(
            child: Text('No Data Found!'),
          )
        : ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, i) {
              final Product pro = products[i];
              return ListTile(
                onTap: () {
                  selectedCat = pro.id;
                  showResults(context);
                },
                title: Text(pro.title),
              );
            });
  }
}
