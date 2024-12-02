import 'package:flutter/material.dart';

class SellingButton extends StatelessWidget {
  const SellingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
            ),
            width: 175,
            height: 60,
            child: const Center(
              child: Text(
                "19.99 \$",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            width: 175,
            height: 60,
            child: const Center(
              child: Text(
                "Free preview",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
