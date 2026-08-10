import 'package:flutter/material.dart';
import 'package:project_3/view/screens/all_products/all_Product.dart';
import 'package:project_3/view/screens/details/details.dart';
import 'package:project_3/view/screens/home/home.dart';
import 'package:project_3/view/screens/splash.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ) ;
  }
}
