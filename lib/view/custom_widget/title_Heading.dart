import 'package:flutter/material.dart';
import 'package:project_3/view/custom_widget/text.dart';

import '../../utils/colors.dart';

class titleHeading extends StatelessWidget {
  const titleHeading({super.key, required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: text,
          color: AppColor.secondaryColors,
          fWeight: FontWeight.bold,
          fSize: 15,
        ),
        InkWell(
          onTap: onTap,
          child: CustomText(
            text: "View All",
            color: AppColor.primaryColors,
            fWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
