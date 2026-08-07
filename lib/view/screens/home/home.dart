import 'package:flutter/material.dart';
import 'package:project_3/utils/colors.dart';
import 'package:project_3/view/custom_widget/search_bar.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_3/view/screens/all_products/all_Product.dart';
import 'package:project_3/view/screens/home/widget/category_widget.dart';
import 'package:project_3/view/screens/home/widget/featured_Card.dart';

import '../../custom_widget/custom_Card.dart';
import '../../custom_widget/slider.dart';
import '../../custom_widget/title_Heading.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.index});
  final int index;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Row(
          spacing: 10,
          children: [
            CustomText(
              text: "Dokani",
              fWeight: FontWeight.bold,
              fSize: 25,
              color: Colors.black87,
            ),
            CustomText(
              text: " Bahe",
              fWeight: FontWeight.bold,
              fSize: 25,
              color: Colors.orangeAccent,
            ),
          ],
        ),
        actions: [
          CustomCard(),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ListView(
          children: [
            SearchWidget(),
            SizedBox(height: 10),
            customSlider(),
            SizedBox(height: 10),
            titleHeading(text: 'Categories', onTap: () {}),
            SizedBox(height: 10),

            categories(),
            SizedBox(height: 10),

            titleHeading(text: 'Featured Products', onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>AllProduct(index: 0)));
            }),
            SizedBox(height: 10),

            Featured(),
            titleHeading(text: 'New Arrivals', onTap: () {}),
            SizedBox(height: 10,),
            NewArrival(),
            SizedBox(height: 10,),
            titleHeading(text: 'Best Selling Product', onTap: () {}),
          SizedBox(height: 10,),

          Trending(),



            titleHeading(text: 'Top Trending Product', onTap: () {}),
            SizedBox(height: 10,),

            Trending(),
          ],
        ),
      ),
    );
  }

  SizedBox Trending() {
    return SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, i) => Container(
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

            ),
          );
  }

  SizedBox NewArrival() {
    return SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, i) =>
                  FeaturedCard(
                    isShowDiscount: false,
                  ),
            ),
          );
  }

  SizedBox Featured() {
    return SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, i) =>
                  FeaturedCard(
                   isShowDiscount: true,
                  ),
              ),
            );
  }

  SizedBox categories() {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, i) => categoryWidget(),
      ),
    );
  }
}




