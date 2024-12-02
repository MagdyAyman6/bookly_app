import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import '../selling_screen.dart';

class SellingSimilarBook extends StatelessWidget {
  const SellingSimilarBook({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const SellingScreen()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: 100,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: NetworkImage(Assets.testImage), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
