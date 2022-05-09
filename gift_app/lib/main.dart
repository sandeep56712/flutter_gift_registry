import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/product_list_screen.dart';
import './screens/home_screen.dart';
import './screens/product_details_screen.dart';
import './providers/category_provider.dart';
import './providers/product_provider.dart';
import './providers/cart_provider.dart';
import './screens/cart_screen.dart';
import './providers/order_provider.dart';
import './screens/order_screen.dart';
import './screens/wishlist_screen.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CategoryProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => OrderProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Gift Registry',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.amber,
          fontFamily: 'Lato',
        ),
        home: HomeScreen(),
        routes: {
          ProductListScreen.routeName: (context) => ProductListScreen(),
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
          CartScreen.routeName: (context) => CartScreen(),
          OrderScreen.routeName: (context) => OrderScreen(),
          WishListScreen.routeName: (context) => WishListScreen(),
        },
      ),
    );
  }
}
