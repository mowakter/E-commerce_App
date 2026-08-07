import 'package:flutter/material.dart';

import '../../../custom_widget/text.dart';

class SpecificationText extends StatelessWidget {
  const SpecificationText({
    super.key, required this.title, required this.details,
  });
  final String title;
  final String details;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: CustomText(text: title,fWeight: FontWeight.w600,fSize: 17,)),
        CustomText(text: ":",fWeight: FontWeight.w600,fSize: 17,),
        Expanded(child: CustomText(text: details,fWeight: FontWeight.w600,fSize: 17,)),
      ],
    );
  }
}