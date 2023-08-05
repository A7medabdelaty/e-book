import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/services/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}