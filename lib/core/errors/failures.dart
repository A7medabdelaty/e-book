import 'package:dio/dio.dart';

abstract class Failure {
  String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  @override
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out!');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Sending time out, try later!');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout, try later!');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error!');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            statusCode: dioException.response!.statusCode!,
            response: dioException.response!.data);
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad request!');
      case DioExceptionType.cancel:
        return ServerFailure('Request was canceled!');
      case DioExceptionType.unknown:
        return ServerFailure('Something went wrong, try later!');
    }
  }

  factory ServerFailure.fromResponse(
      {required int statusCode, required Map<String, dynamic> response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Not Found');
    } else if (statusCode == 500 || statusCode == 501 || statusCode == 502) {
      return ServerFailure('Internal Server Error');
    } else {
      return ServerFailure('Unexpected exception');
    }
  }
}
