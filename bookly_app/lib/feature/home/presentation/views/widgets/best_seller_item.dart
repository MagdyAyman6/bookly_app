import 'package:bookly_app/feature/home/data/models/books.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/rating_book.dart';
import 'package:bookly_app/feature/selling/presentation/views/selling_screen.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem(this.books,{super.key});
 final Books books;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SellingScreen()));
            },
            child: Container(
              width: 90,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage("${books.volumeInfo!.imageLinks!.thumbnail}"), fit: BoxFit.fill),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
           Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  "${books.volumeInfo!.title}",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                 Text(
                  "${books.volumeInfo!.authors?[0]}",
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Free",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    RatingBook(
                     rate: "${books.volumeInfo!.maturityRating}",
                      num: books.volumeInfo!.pageCount,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
