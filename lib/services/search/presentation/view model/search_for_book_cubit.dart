import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:bookly/services/search/data/repos/search_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_for_book_state.dart';

class SearchForBookCubit extends Cubit<SearchForBookState> {
  SearchForBookCubit(this.searchRepo) : super(SearchForBookInitial());

  final SearchRepo searchRepo;

  Future<void> searchForBook({required String bookName}) async {
    emit(SearchForBookLoading());
    var result = await searchRepo.searchForBook(bookName: bookName);
    result.fold((failure) => emit(SearchForBookFailure(failure.errMessage)),
        (books) => emit(SearchForBookSuccess(books)));
  }
}
