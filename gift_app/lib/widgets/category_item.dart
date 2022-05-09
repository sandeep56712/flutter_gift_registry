import 'package:flutter/material.dart';
import 'package:gift_app/screens/product_list_screen.dart';

class CategoryItem extends StatelessWidget {
  late String id;
  late String title;
  late String imageUrl;

  CategoryItem(
    this.id,
    this.title,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(ProductListScreen.routeName, arguments: {
          'id': id,
          'title': title,
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.black12,
          child: GridTile(
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black54,
              title: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
