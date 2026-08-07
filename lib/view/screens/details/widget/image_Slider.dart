import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../custom_widget/text.dart';


class productImageSlider extends StatelessWidget {
  const productImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300.0,
        aspectRatio: 16 / 9,
        autoPlay: true,
        viewportFraction: 1,
        autoPlayInterval: Duration(seconds: 3),
      ),
      items: [1, 2, 3, 4, 5].map((index) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.philips.com/is/image/philipsconsumer/491e2dd5e0d1466f8ee5b0cd010451ae?wid=700&hei=700&",
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Card(
                  color: Colors.red,
                  child: CustomText(
                    text: "-50 %",
                    fSize: 18,
                    fWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
    );
  }
}