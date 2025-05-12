import 'package:flutter/material.dart';
import 'package:mediva/core/app_color.dart';
import 'package:mediva/core/styles.dart';
import 'package:mediva/core/widgets/custom_item_list_tile_2.dart';

class HelpAndSupportViewBody extends StatelessWidget {
  const HelpAndSupportViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help & Support",
          style: Styles.textStyle20.copyWith(color: AppColor.kBlackColor),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 32, bottom: 20),
              width: 350,
              height: 161,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColor.kListTileBackGroundColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomItemListTile2(
                    title: "FAQs & Troubleshooting",
                    onTap: () {},
                  ),
                  CustomItemListTile2(
                    title: "Contact Support",
                    onTap: () {},
                  ),
                  CustomItemListTile2(
                    title: "Report a Bug",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 350,
              height: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColor.kListTileBackGroundColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomItemListTile2(
                    title: "Terms of Service & Privacy Policy",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
