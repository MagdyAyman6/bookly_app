import 'package:flutter/material.dart';
import 'package:mediva/core/assets.dart';

import '../../../../../../../core/app_color.dart';
import '../../../../../../../core/styles.dart';

class TwoFactorAuthentication extends StatelessWidget {
  const TwoFactorAuthentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColor.kWhiteColor,
        title: Text(
          "Two-Factor Authentication",
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
        padding: const EdgeInsets.symmetric(horizontal: 177, vertical: 32),
        child: Image.asset(
          AssetsData.twoFactorAuthLogo,
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}
