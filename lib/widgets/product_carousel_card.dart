import 'package:ecom/models/product_model.dart';
import 'package:ecom/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductCarouselCard extends StatelessWidget {
  final List<Product> products;
  const ProductCarouselCard({
    required this.products,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: ProductCard(product: products[index]),
            );
          }),
    );
  }
}
