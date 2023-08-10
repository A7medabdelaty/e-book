import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:bookly/services/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> searchForBook(
      {required String bookName}) async {
    try {
      Map<String, dynamic> response = await apiService.get(
          endPoint:
              'volumes?&maxResults=40&projection=full&q=$bookName');
      List<BookModel> books = [];
      for (var item in response['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          print(e.toString());
        }
      }
      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
