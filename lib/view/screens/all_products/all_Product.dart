import 'package:project_3/model/product_Model.dart';
import 'package:project_3/view/custom_widget/custom_Cart.dart';
import 'package:project_3/view/screens/all_products/product.dart';
import 'package:project_3/view/screens/all_products/widget/filter_section.dart';
import 'package:project_3/view/screens/all_products/widget/productCart_Widget.dart';

import '../../custom_widget/text.dart';
import 'package:flutter/material.dart';


class AllProduct extends StatefulWidget {
  const AllProduct({super.key, required this.index,});

 final  int index;


  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  List<ProductModel> productData =[];



  getproduct(){
    productData.clear();
    productData.addAll(Product.p);
    setState(() {});
  }
  @override
  void initState() {
    getproduct();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomText(
            text: "All Product(${productData.length})",
            fWeight: FontWeight.bold,
            fSize: 18,
          ),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(height: 10),
          CustomCart(),
          SizedBox(height: 10),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          FilterSection(),
          GridView.builder(
            shrinkWrap: true,
            itemCount: Product.p.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
            ),
            itemBuilder: (context, index) => ProductCartWidget(index: index,
            pData: productData[index],
            ),
          ),
        ],
      ),
    );
  }
}