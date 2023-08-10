part of 'search_for_book_cubit.dart';

abstract class SearchForBookState {}

class SearchForBookInitial extends SearchForBookState {}

class SearchForBookLoading extends SearchForBookState {}

class SearchForBookSuccess extends SearchForBookState {
  final List<BookModel> books;

  SearchForBookSuccess(this.books);
}

class SearchForBookFailure extends SearchForBookState {
  final String errMessage;

  SearchForBookFailure(this.errMessage);
}
