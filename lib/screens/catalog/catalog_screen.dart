import 'package:flutter/material.dart';
import 'package:flutter_ec_app/models/models.dart';

import 'package:flutter_ec_app/widget/widget.dart';

import '../../models/category_model.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';
  const CatalogScreen({
    Key? key,
    required this.category,
  }) : super(key: key);

  static Route route({required Category category}) {
    return MaterialPageRoute(
      builder: (_) => CatalogScreen(category: category),
      settings: RouteSettings(name: routeName),
    );
  }

  final Category category;

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(
        title: category.name,
      ),
      bottomNavigationBar: CustomNavBar(),
      // body: ProductCard(product: Product.products[0]),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 16.0,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.15,
        ),
        itemCount: categoryProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(
            product: categoryProducts[index],
            widthFactor: 2.2,
          );
        },
      ),
    );
  }
}
