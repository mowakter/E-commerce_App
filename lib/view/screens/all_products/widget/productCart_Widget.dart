import 'package:flutter/material.dart';
import 'package:project_3/model/product_Model.dart';

import '../../../custom_widget/text.dart';
import '../product.dart';

class ProductCartWidget extends StatelessWidget {
  const ProductCartWidget({super.key, required this.index, required this.pData});
  final int index;


  final ProductModel pData;



  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // image: DecorationImage(
                  //   image: NetworkImage(pData["images"] ?? "No Image"),
                  // ),
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
                  text: pData.title,
                  fSize: 15,
                  fWeight: FontWeight.bold,
                ),
                Row(
                  children: [
                  //   CustomText(
                  //     text: "৳ ${pData["price"] ?? "No Price"}",
                  //     fSize: 15,
                  //     fWeight: FontWeight.bold,
                  //   ),
                  //   SizedBox(width: 30),
                    CustomText(
                      text: "৳ ${pData.oldPrice}",
                      fSize: 15,
                      fWeight: FontWeight.bold,
                      color: Colors.black26,
                      tDecoration: TextDecoration.lineThrough,
                    ),
                    SizedBox(width: 30),
                    CustomText(
                      text: "-${pData.discount}",
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
                      text: "${pData.rating}",
                      color: Colors.redAccent,
                      fSize: 15,
                    ),
                    CustomText(
                      text: "${pData.review}",
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