import 'package:flutter/material.dart';
import 'package:project_3/view/custom_widget/custom_Cart.dart';

import '../view/custom_widget/text.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  int select = 2;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
     // animationDuration: Duration(milliseconds: 5),
      child: Scaffold(
        appBar: AppBar(
         // backgroundColor: Colors.white,
         // elevation: 0,
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back, color: Colors.black),
          //   onPressed: () => Navigator.pop(context),
          // ),
          title: CustomText(text: "My Orders", fSize: 20),
          actions: [
            Icon(Icons.search, size: 25),
            SizedBox(width: 10),
              CustomCart(),
          ],
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            labelPadding: EdgeInsets.symmetric(horizontal: 20),
            isScrollable: true,
            labelColor: Colors.deepOrange,
            tabs: [
              CustomText(text: "All ",fSize: 15,),
              CustomText(text: "Processing",fSize: 15,),
              CustomText(text: "Shipped",fSize: 15,),
              CustomText(text: "Delivered",fSize: 15,),
              CustomText(text: "Cancelled",fSize: 15,),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SafeArea(
              child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Order ID",fSize: 12,fWeight: FontWeight.bold,color: Colors.black38,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "#DB123456",fSize: 18,fWeight: FontWeight.bold,color: Colors.black,),
                          SizedBox(width: 60,),
                          CustomText(text: "12 August 2026",fSize: 13,fWeight: FontWeight.bold,color: Colors.black38,),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        spacing: 350,
                        children: [
                          CustomText(text: "3 Items",fSize: 13,fWeight: FontWeight.bold,color: Colors.black54,),
                          CustomText(text: "৳ 4,397",fSize: 15,fWeight: FontWeight.bold,color: Colors.black,),
                        ],),
                    ],

                  ),
                ],
              ),
            ),)
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: select,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long_outlined),
              label: "Orders",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ],
        ),
      ),
    );
  }
}