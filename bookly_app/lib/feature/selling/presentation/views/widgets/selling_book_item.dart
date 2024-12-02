import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class SellingBookItem extends StatelessWidget {
  const SellingBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: 170,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
            image: NetworkImage(Assets.testImage), fit: BoxFit.fill),
      ),
    );
  }
}
