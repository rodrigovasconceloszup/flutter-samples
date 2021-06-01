import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/datasource/products.dart';

import '../main.dart';
import 'product_details_page.dart';
import 'widget/product_card.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  int productsQtd = 0;

  void onAddProduct() {
    setState(() => productsQtd++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Flutter!!, Param: $param'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(Icons.shopping_cart_outlined),
                  Positioned(
                    top: -3,
                    right: -3,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Text(productsQtd.toString(), style: TextStyle(
                        fontSize: 12,
                      ),),
                      radius: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 40,
              runSpacing: 60,
              children: products
                  .map(
                    (product) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (_) => ProductDetailsPage(product, onAddProduct: onAddProduct,),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 160,
                        child: ProductCard(
                          product,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
