import 'package:flutter/material.dart';
import 'package:project_3/view/custom_widget/custom_Card.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/all_products/product.dart';
import 'package:project_3/view/screens/all_products/widget/filter_section.dart';
import 'package:project_3/view/screens/all_products/widget/productCard_Widget.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key, required this.index});
  final int index;
  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomText(
            text: "All Product",
            fWeight: FontWeight.bold,
            fSize: 18,
          ),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(height: 10),
          CustomCard(),
          SizedBox(height: 10),
        ],
      ),
      body:SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Column(
          children: [
            FilterSection(),
            SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics:  const NeverScrollableScrollPhysics(),
              itemCount: Product.p.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, i) => ProductCardWidget(index: i),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
