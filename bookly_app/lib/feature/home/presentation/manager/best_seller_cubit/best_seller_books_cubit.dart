import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/home_repo/home_repo.dart';
import '../../../data/models/books.dart';
part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());

  HomeRepo homeRepo;
  Future<void>getBestSellerBooks()async{
    emit(BestSellerBooksLoading());
    var data = await homeRepo.getBestBooks();
    data.fold((error){
      emit(BestSellerBooksFailuire(errorMessage: error));
    }, (books){
      emit(BestSellerBooksSuccess(books: books));
    });
  }
}
