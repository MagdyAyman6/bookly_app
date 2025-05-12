import 'package:flutter/material.dart';
import 'package:mediva/core/app_color.dart';
import 'package:mediva/core/styles.dart';
import 'package:mediva/core/widgets/custom_button.dart';
import 'package:mediva/core/widgets/custom_container.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
          title: "Explore All Mediva Features",
          height: 150,
          width: 240,
          button: Align(
            alignment: Alignment.centerLeft,
            child: CustomButton(
              text: "Get Started",
              style: Styles.textStyle12.copyWith(color: AppColor.kBlackColor),
              onTap: () {},
              color: AppColor.kWhiteColor,
              width: 100,
              height: 38,
              borderRadius: 18,
            ),
          ),
        ),
      ],
    );
  }
}
