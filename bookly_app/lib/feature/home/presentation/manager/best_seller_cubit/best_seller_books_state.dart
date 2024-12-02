part of 'best_seller_books_cubit.dart';

@immutable
sealed class BestSellerBooksState {}

final class BestSellerBooksInitial extends BestSellerBooksState {}
final class BestSellerBooksLoading extends BestSellerBooksState {}
final class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<Books> books;

  BestSellerBooksSuccess({required this.books});
}
final class BestSellerBooksFailuire extends BestSellerBooksState {
  final String errorMessage;

  BestSellerBooksFailuire({required this.errorMessage});

}
