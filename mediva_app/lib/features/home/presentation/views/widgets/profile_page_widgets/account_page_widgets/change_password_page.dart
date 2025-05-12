import 'package:flutter/material.dart';
import 'package:mediva/core/widgets/custom_button.dart';

import '../../../../../../../core/app_color.dart';
import '../../../../../../../core/styles.dart';
import '../../../../../../../core/widgets/custom_text_field.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColor.kWhiteColor,
        title: Text(
          "Change Password",
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
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                label: "Email",
                hint: "Enter your Email",
                keyboardType: TextInputType.emailAddress,
                controller: TextEditingController(),
              ),
              CustomTextField(
                label: "Current Password",
                hint: "Enter your current password",
                keyboardType: TextInputType.text,
                controller: TextEditingController(),
              ),
              CustomTextField(
                label: "New Password",
                hint: "Enter your new password",
                keyboardType: TextInputType.text,
                controller: TextEditingController(),
              ),
              CustomTextField(
                label: "Confirm New Password",
                hint: "Confirm you new password",
                keyboardType: TextInputType.text,
                controller: TextEditingController(),
              ),
              SizedBox(height: 38),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  text: "Save Changes",
                  style: Styles.textStyle16,
                  onTap: () {},
                  color: AppColor.kSecondaryGreenColor,
                  width: 200,
                  height: 52,
                  borderRadius: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
