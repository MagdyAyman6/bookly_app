import 'package:flutter/material.dart';
import 'package:mediva/core/app_color.dart';
import 'package:mediva/core/styles.dart';

class YourHealthInsightsHead extends StatelessWidget {
  const YourHealthInsightsHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Your Health Insights",
            style: Styles.textStyle20.copyWith(
              color: AppColor.kBlackColor,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              "View All",
              style: Styles.textStyle12.copyWith(
                color: AppColor.kSecondaryGrayColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
