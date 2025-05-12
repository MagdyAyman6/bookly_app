import 'package:flutter/material.dart';

import 'features/home/presentation/views/home_page_view.dart';

void main() {
  runApp(const MedivaApp());
}

class MedivaApp extends StatelessWidget {
  const MedivaApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageView(),
    );
  }
}
