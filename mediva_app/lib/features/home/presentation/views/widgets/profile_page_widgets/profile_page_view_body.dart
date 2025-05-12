import 'package:flutter/material.dart';
import 'package:mediva/features/home/presentation/views/widgets/profile_page_widgets/profile_page_head.dart';
import 'package:mediva/features/home/presentation/views/widgets/profile_page_widgets/profile_page_list_tile_items.dart';

class ProfilePageViewBody extends StatelessWidget {
  const ProfilePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfilePageHead(),
            SizedBox(height: 32),
            ProfilePageListTileItems(),
            SizedBox(height: 19),
          ],
        ),
      ),
    );
  }
}
