import 'package:flutter/material.dart';

import '../../../custom_widget/text.dart';

class categoryWidget extends StatelessWidget {
  const categoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        spacing: 5,
        children: [
          CircleAvatar(
            backgroundColor:Colors.grey ,
            radius: 30,backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE2gok4gmTWmccXcGOHM-JWE5Z8Uv2zFiTxX8E_XbnHQ&s=10") ,),
          CustomText(text: "Electronics",fWeight: FontWeight.bold,),
        ],
      ),
    );
  }
}