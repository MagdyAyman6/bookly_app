import 'package:flutter/material.dart';
import 'package:mediva/features/home/presentation/views/widgets/my_bottom_nav_bar.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const MyBottomNavigationBar(),
    );
  }
}
