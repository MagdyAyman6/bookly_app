import 'package:flutter/material.dart';
import 'package:mediva/core/assets.dart';
import 'package:mediva/core/widgets/custom_button.dart';

import '../../../../../../../core/app_color.dart';
import '../../../../../../../core/styles.dart';

class LinkedAccountsPage extends StatelessWidget {
  const LinkedAccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColor.kWhiteColor,
        title: Text(
          "Linked Accounts",
          style: Styles.textStyle20.copyWith(
              color: AppColor.kBlackColor, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AssetsData.appleLogo, width: 32, height: 30),
                    SizedBox(width: 11),
                    Text(
                      "Google Account",
                      style: Styles.textStyle16
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                CustomButton(
                  text: "Connect",
                  style: Styles.textStyle16.copyWith(color: Color(0xff101623)),
                  onTap: () {},
                  color: AppColor.connectButtonColor,
                  width: 92,
                  height: 40,
                  borderRadius: 24,
                ),
              ],
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(AssetsData.googleLogo, width: 32, height: 30),
                    SizedBox(width: 11),
                    Text(
                      "Apple Account",
                      style: Styles.textStyle16
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                CustomButton(
                  text: "Connect",
                  style: Styles.textStyle16.copyWith(color: Color(0xff101623)),
                  onTap: () {},
                  color: AppColor.connectButtonColor,
                  width: 92,
                  height: 40,
                  borderRadius: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
