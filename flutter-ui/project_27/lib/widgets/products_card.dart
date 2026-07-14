import 'package:flutter/material.dart';

class ProductsCard extends StatelessWidget {
  final String productImage;
  final String productTitle;
  final String productPrice;
  const ProductsCard({
    super.key,
    required this.productImage,
    required this.productTitle,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                productImage,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              spacing: 2,

              children: [
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  productTitle,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  productPrice,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    letterSpacing: 0.1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
