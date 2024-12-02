import 'package:flutter/material.dart';

class SellingAppBar extends StatelessWidget {
  const SellingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 30,
            )),
      ],
    );
  }
}
