import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:bookly/services/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> res = await apiService.get(
          endPoint: 'volumes?Sorting=newest &q=Programming');
      List<BookModel> books = [];
      for (var item in res['items']) {
        books.add(BookModel.fromJson(item));
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

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
