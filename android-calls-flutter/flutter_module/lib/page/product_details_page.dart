import 'package:flutter/material.dart';
import 'package:flutter_module/model/product_model.dart';
import 'package:flutter_module/page/widget/product_details_card.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage(
    this.product, {
    required this.onAddProduct,
  });

  final ProductModel product;
  final VoidCallback onAddProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ProductDetailsCard(product),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.add_shopping_cart),
                    label: Text('Adicionar ao carrinho'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      onAddProduct();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Produto adicionado ao carrinho!'),
                          backgroundColor: Theme.of(context).primaryColor,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(milliseconds: 500),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
