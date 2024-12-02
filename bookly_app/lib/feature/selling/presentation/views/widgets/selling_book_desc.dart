import 'package:flutter/material.dart';
import '../../../../home/presentation/views/widgets/rating_book.dart';

class SellingBookDesc extends StatelessWidget {
  const SellingBookDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          "The Jungle Book",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        Text(
          "Rudyard Kipling",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBook(
              num: 11,
             rate: '',
            ),
          ],
        ),
      ],
    );
  }
}
