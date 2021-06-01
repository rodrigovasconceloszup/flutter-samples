import 'package:flutter/material.dart';
import 'package:flutter_module/model/product_model.dart';

import 'rating.dart';

class ProductDetailsCard extends StatelessWidget {
  ProductDetailsCard(this.product);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: product.id,
              child: SizedBox(
                height: 400,
                width: 160,
                child: Image.asset(
                  'assets/${product.urlImage}',
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              product.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 4),
            Rating(product.rating),
            SizedBox(height: 6),
            Text(
              product.description,
              overflow: TextOverflow.ellipsis,
              maxLines: 12,
            ),
          ],
        ),
      ),
    );
  }
}
