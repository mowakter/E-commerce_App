import 'package:flutter/material.dart';
import 'package:project_3/view/custom_widget/text.dart';

import '../../utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.isEmptyBG, required this.title, required this.onTap, this.h, this.w,
  });


  final bool isEmptyBG;
  final String title;
  final VoidCallback onTap;
  final double ? h;
  final double ? w;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.primaryColors,width: 2),
          color: isEmptyBG == true ? null : AppColor.primaryColors,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: CustomText(text: title,color: isEmptyBG == true ?AppColor.primaryColors : Colors.white,fSize: 18,fWeight: FontWeight.w500,),
      ),
    );
  }
}