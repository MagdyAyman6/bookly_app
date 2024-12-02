import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/home_repo/home_repo.dart';
import '../../../data/models/books.dart';
part 'all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  AllBooksCubit(this.homeRepo) : super(AllBooksInitial());
  HomeRepo homeRepo;
  Future<void>getAllBooks()async{
    emit(AllBooksLoading());
    var data = await homeRepo.getAllBooks();
    data.fold((error){
      emit(AllBooksFailiure(error));
    }, (books){
      emit(AllBooksSuccess(books));
    });
  }

}
