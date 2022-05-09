import 'package:flutter/material.dart';
import '../screens/order_screen.dart';
import '../screens/wishlist_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Hello Sandeep!'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          // Divider(),
          // ListTile(
          //   leading: Icon(
          //     Icons.favorite,
          //     color: Theme.of(context).primaryColor,
          //   ),
          //   title: Text('WishList'),
          //   onTap: () {
          //     Navigator.of(context).pushNamed(WishListScreen.routeName);
          //   },
          // ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.wallet_giftcard_sharp,
              color: Theme.of(context).primaryColor,
            ),
            title: Text('Gift Registry'),
            onTap: () {
              Navigator.of(context).pushNamed(OrderScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
