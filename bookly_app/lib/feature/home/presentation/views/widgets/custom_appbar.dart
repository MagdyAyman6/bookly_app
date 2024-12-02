import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Assets.logo,
            width: 120,
            height: 80,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              )),
        ],
      ),
    );
  }
}
