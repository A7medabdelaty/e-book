import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:bookly/services/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> getNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) => emit(NewestBooksFailure(failure.errMessage)),
        (books) => emit(NewestBooksSuccess(books)));
  }
}
