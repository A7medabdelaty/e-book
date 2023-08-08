import 'package:bookly/services/details/data/repos/details_repo.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.detailsRepo) : super(SimilarBooksInitial());

  final DetailsRepo detailsRepo;

  Future<void> getSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await detailsRepo.getSimilarBooks(category: category);
    result.fold(
      (failure) => emit(SimilarBooksFailure(failure.errMessage)),
      (books) => emit(SimilarBooksSuccess(books)),
    );
  }
}
