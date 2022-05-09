import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/category.dart';
import './category_item.dart';
import '../providers/category_provider.dart';

class CategoryGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categoryData = Provider.of<CategoryProvider>(context);
    final category = categoryData.items;

    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: category.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (ctx, i) =>
          CategoryItem(category[i].id, category[i].title, category[i].imageUrl),
    );
  }
}
