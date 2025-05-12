import 'package:flutter/material.dart';
import 'package:mediva/core/widgets/custom_button.dart';

import '../../../../../../../core/app_color.dart';
import '../../../../../../../core/styles.dart';

class DeleteAccountPage extends StatelessWidget {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColor.kWhiteColor,
        title: Text(
          "Delete Account",
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
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.info,
              color: Color(0xFFE66D57),
              size: 64,
            ),
            SizedBox(height: 32),
            Text(
              "This action is irreversible!",
              style: Styles.textStyle24,
            ),
            Text(
              "Going Forward with this delete all your data\nfrom mediva such as email and cached files",
              style: Styles.textStyle16.copyWith(
                color: Color(0xFF8F8F96),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 180),
            CustomButton(
              text: "Delete Account",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColor.kWhiteColor,
              ),
              onTap: () {},
              color: AppColor.deleteButtonColor,
              width: 200,
              height: 52,
              borderRadius: 24,
            ),
          ],
        ),
      ),
    );
  }
}
