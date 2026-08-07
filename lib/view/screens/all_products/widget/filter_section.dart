import 'package:flutter/material.dart';

import '../../../custom_widget/text.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 5,
          children: [
            Icon(Icons.tune,size: 17,),
            CustomText(text: "Filter",fWeight: FontWeight.bold,fSize: 15,),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            CustomText(text: "Sort By",fWeight: FontWeight.bold,fSize: 15,),
            Icon(Icons.keyboard_arrow_down_sharp,size: 17,),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            Icon(Icons.grid_view,size: 17,),
            CustomText(text: "Grid",fWeight: FontWeight.bold,fSize: 15,),
          ],
        ),
      ],
    );
  }
}