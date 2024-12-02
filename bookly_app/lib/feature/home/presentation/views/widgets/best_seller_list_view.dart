import 'package:bookly_app/feature/home/presentation/manager/best_seller_cubit/best_seller_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if(state is BestSellerBooksSuccess)
          {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView.builder(
                  itemCount: state.books.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return BestSellerItem(state.books[index]);
                  }),
            );

          }else if(state is BestSellerBooksFailuire){
          return Text(state.errorMessage);
        }else {
         return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
