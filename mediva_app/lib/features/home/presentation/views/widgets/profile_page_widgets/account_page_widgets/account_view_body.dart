import 'package:flutter/material.dart';
import 'package:mediva/core/app_color.dart';
import 'package:mediva/core/styles.dart';
import 'package:mediva/core/widgets/custom_item_list_tile_2.dart';
import 'package:mediva/features/home/presentation/views/widgets/profile_page_widgets/account_page_widgets/change_password_page.dart';
import 'package:mediva/features/home/presentation/views/widgets/profile_page_widgets/account_page_widgets/personal_information_page.dart';
import 'package:mediva/features/home/presentation/views/widgets/profile_page_widgets/account_page_widgets/two_factor_authentication.dart';

import 'delete_account_page.dart';
import 'linked_accounts_page.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Account",
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
                    title: "Personal Information",
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PersonalInformationPage(),
                        ),
                      );
                    },
                  ),
                  CustomItemListTile2(
                    title: "Change Password",
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ChangePasswordPage(),
                        ),
                      );
                    },
                  ),
                  CustomItemListTile2(
                    title: "Manage Linked Accounts",
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const LinkedAccountsPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 350,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColor.kListTileBackGroundColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomItemListTile2(
                    title: "Two-Factor Authentication",
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => TwoFactorAuthentication(),
                        ),
                      );
                    },
                  ),
                  CustomItemListTile2(
                    title: "Delete Account",
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DeleteAccountPage(),
                        ),
                      );
                    },
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
