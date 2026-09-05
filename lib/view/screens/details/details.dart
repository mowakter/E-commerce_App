import 'package:flutter/material.dart';
import 'package:project_3/view/custom_widget/custom_Cart.dart';
import 'package:project_3/view/custom_widget/text.dart';
import 'package:project_3/view/screens/details/widget/image_Slider.dart';
import 'package:project_3/view/screens/details/widget/specification_Text.dart';
import '../../custom_widget/custom_button.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.index});
  final int index;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [CustomCart(), SizedBox(height: 10)]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            productImageSlider(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 150,
                    children: [
                      CustomText(
                        text: "boAt Rockers 450 Pro",
                        fSize: 18,
                        fWeight: FontWeight.bold,
                      ),
                      Icon(Icons.share, size: 20),
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    spacing: 5,
                    children: [
                      Icon(Icons.star, color: Colors.purple),
                      CustomText(
                        text: "4.5",
                        fWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                      CustomText(
                        text: "(320 Reviews)",
                        fSize: 12,
                        fWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    spacing: 40,
                    children: [
                      CustomText(
                        text: "৳ 2,399",
                        fSize: 20,
                        fWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      CustomText(
                        text: "৳ 3,999",
                        fWeight: FontWeight.bold,
                        color: Colors.black54,
                        tDecoration: TextDecoration.lineThrough,
                      ),
                      CustomText(
                        text: "-50%",
                        fSize: 15,
                        fWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.black12),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 40,
                    runSpacing: 20,
                    children: [
                      featuredText(
                        i: Icons.speaker_notes_outlined,
                        s: 'Super Extra Bass',
                      ),
                      featuredText(
                        i: Icons.timer_sharp,
                        s: 'Up to 15H Playback',
                      ),
                      SizedBox(width: 170),
                      featuredText(
                        i: Icons.headphones_outlined,
                        s: 'Soft Padded Ear Cushions',
                      ),
                      featuredText(
                        i: Icons.security_outlined,
                        s: '1 Year Warranty',
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.black12),
                  SizedBox(height: 15),
                  CustomText(
                    text: "Description",
                    fWeight: FontWeight.bold,
                    fSize: 18,
                  ),
                  CustomText(
                    maxLine: 20,
                    text:
                        "We have provided the fastest way to copy the Bangladeshi taka symbol and we also provide a download option for the symbol to be used anywhere as text.",
                    fSize: 15,
                  ),
                  SizedBox(height: 17),
                  SpecificationText(title: 'Brand', details: 'boAt'),
                  SpecificationText(title: 'Model', details: 'Rockers 450 Pro'),
                  SpecificationText(
                    title: 'Battery Life',
                    details: 'Up to 15 Hours',
                  ),
                  SpecificationText(
                    title: 'Connectivity ',
                    details: 'Bluetooth 5.0',
                  ),
                  SpecificationText(title: 'Warranty', details: '1 Year'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 20,
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add Oder',
                onTap: () {},
                isEmptyBG: true,
              ),
            ),
            Expanded(
              child: CustomButton(
                onTap: () {},
                title: 'Buy Now',
                isEmptyBG: false,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row featuredText({required IconData i, required String s}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(i),
        SizedBox(width: 5),
        CustomText(text: s, maxLine: 2, fSize: 15, fWeight: FontWeight.w600),
      ],
    );
  }
}
