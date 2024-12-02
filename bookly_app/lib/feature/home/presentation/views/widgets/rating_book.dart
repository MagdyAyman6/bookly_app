import 'package:flutter/material.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({super.key, required this.rate, required this.num});
  final String rate;
  final int? num;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
          size: 20,
        ),
        Text(
          '$rate',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Text(
          "$num",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
