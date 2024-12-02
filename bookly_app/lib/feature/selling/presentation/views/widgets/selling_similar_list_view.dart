import 'package:bookly_app/feature/selling/presentation/views/widgets/selling_similar_book.dart';
import 'package:flutter/material.dart';

class SellingSimilarListView extends StatelessWidget {
  const SellingSimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const SellingSimilarBook();
        },
        itemCount: 5,
      ),
    );
  }
}
