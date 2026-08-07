import 'package:flutter/material.dart';

import '../../../custom_widget/text.dart';
import '../product.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            //alignment: Alignment.topRight,
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(Product.p[index]["images"]),
                  ),
                ),
              ),
              Icon(Icons.favorite_border),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 7,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: Product.p[index]["title"] ?? "No Title",
                  fSize: 15,
                  fWeight: FontWeight.bold,
                ),
                Row(
                  children: [
                    CustomText(
                      text: "৳ ${Product.p[index]["price"] ?? "No Price"}",
                      fSize: 15,
                      fWeight: FontWeight.bold,
                    ),
                    SizedBox(width: 30),
                    CustomText(
                      text: "৳ ${Product.p[index]["oldPrice"] ?? "No OldPrice"}",
                      fSize: 15,
                      fWeight: FontWeight.bold,
                      color: Colors.black26,
                      tDecoration: TextDecoration.lineThrough,
                    ),
                    SizedBox(width: 30),
                    CustomText(
                      text: "-${Product.p[index]["discount"] ?? "No Discount"}",
                      fSize: 15,
                      fWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.purpleAccent),
                    CustomText(
                      text: "${Product.p[index]["rating"] ?? "No Rating"}",
                      color: Colors.redAccent,
                      fSize: 15,
                    ),
                    CustomText(
                      text: "${Product.p[index]["review"] ?? "No Review"}",
                      color: Colors.black26,
                      fSize: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
