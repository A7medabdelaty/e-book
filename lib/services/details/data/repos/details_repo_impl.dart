import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/services/details/data/repos/details_repo.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class DetailsRepoImpl extends DetailsRepo {
  final ApiService apiService;

  DetailsRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> getSimilarBooks(
      {required String category}) async {
    try {
      Map<String, dynamic> response = await apiService.get(
          endPoint:
              'volumes?q=subject:$category&maxResults=40&projection=full');
      List<BookModel> books = [];
      for (var item in response['items']) {
        try {
          books.add(BookModel.fromJson(item));
        }catch(e){
          print(e);
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
