import 'package:bookly_app/feature/home/data/models/books.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../selling/presentation/views/selling_screen.dart';

class BookItem extends StatelessWidget {
  const BookItem(this.books,{super.key});

 final Books books;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const SellingScreen()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 7),
        width: 170,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: NetworkImage("${books.volumeInfo!.imageLinks?.thumbnail}"), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
