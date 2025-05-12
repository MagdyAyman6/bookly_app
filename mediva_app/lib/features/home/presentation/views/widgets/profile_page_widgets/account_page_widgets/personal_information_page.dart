import 'package:flutter/material.dart';

import '../../../../../../../core/app_color.dart';
import '../../../../../../../core/styles.dart';
import '../../../../../../../core/widgets/custom_text_field.dart';

class PersonalInformationPage extends StatelessWidget {
  const PersonalInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: AppColor.kWhiteColor,
        title: Text(
          "Personal Information",
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
                label: "First Name",
                hint: "first name",
                keyboardType: TextInputType.name,
                controller: TextEditingController(),
              ),
              CustomTextField(
                label: "Last Name",
                hint: "last name",
                keyboardType: TextInputType.name,
                controller: TextEditingController(),
              ),
              CustomTextField(
                label: "Username",
                hint: "unknown person",
                keyboardType: TextInputType.name,
                controller: TextEditingController(),
              ),
              CustomTextField(
                label: "Date of birth",
                hint: "12/04/2005",
                keyboardType: TextInputType.none,
                controller: TextEditingController(),
              ),
              CustomTextField(
                label: "Gender",
                hint: "Male",
                keyboardType: TextInputType.name,
                controller: TextEditingController(),
              ),
              CustomTextField(
                label: "Phone Number",
                hint: "20564564546546",
                keyboardType: TextInputType.number,
                controller: TextEditingController(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
