import 'package:bookly_app/feature/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'book_item.dart';

class BookItemListview extends StatelessWidget {
  const BookItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBooksCubit, AllBooksState>(
      builder: (context, state) {
        if (state is AllBooksSuccess){
          return SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  BookItem(state.books[index]);
              },
              itemCount: state.books.length,
            ),
          );
        }else if (state is AllBooksFailiure){
          return Text(state.errorMessage);
        }else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
