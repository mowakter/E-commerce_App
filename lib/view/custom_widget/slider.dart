import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class customSlider extends StatelessWidget {
  const customSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 150.0,
        aspectRatio: 16/9,
        autoPlay: true,
        viewportFraction: 1,
        autoPlayInterval: Duration(seconds: 3),
      ),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: NetworkImage("https://t3.ftcdn.net/jpg/04/65/46/52/360_F_465465254_1pN9MGrA831idD6zIBL7q8rnZZpUCQTy.jpg"),
                  fit: BoxFit.fill,
                  ),
                ),
                child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
          },
        );
      }).toList(),
    );
  }
}