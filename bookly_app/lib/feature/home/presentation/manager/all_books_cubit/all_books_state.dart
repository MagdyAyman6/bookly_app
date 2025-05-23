part of 'all_books_cubit.dart';

@immutable
sealed class AllBooksState {}

final class AllBooksInitial extends AllBooksState {}
final class AllBooksLoading extends AllBooksState {}
final class AllBooksSuccess extends AllBooksState {
  final List<Books> books;
  AllBooksSuccess(this.books);

}
final class AllBooksFailiure extends AllBooksState {
  final String errorMessage;

  AllBooksFailiure(this.errorMessage);
}
