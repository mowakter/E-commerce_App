import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: Text("0"),
      backgroundColor: Colors.orangeAccent,
      textColor: Colors.white,
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.shopping_cart_outlined),
      ),
    );
  }
}