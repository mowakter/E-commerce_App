import 'package:flutter/material.dart';

import '../../../custom_widget/text.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({super.key, this.isShowDiscount});
  final bool? isShowDiscount;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD3ZSkZMqNQ-Nc2DX4ks0FzqbzTRAeypvslk5_TzeVEg&s=10",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "AirPods 4 Apple Support",
                  fWeight: FontWeight.bold,
                ),
                CustomText(text: "৳ 999", fWeight: FontWeight.bold),
                isShowDiscount == true
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "৳ 999",
                            color: Colors.grey,
                            fWeight: FontWeight.bold,
                            tDecoration: TextDecoration.lineThrough,
                          ),
                          SizedBox(width: 80),
                          CustomText(
                            text: "- 50%",
                            color: Colors.deepOrange,
                            fWeight: FontWeight.bold,
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
