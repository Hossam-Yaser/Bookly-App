import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(dioException.message!);
      case DioExceptionType.sendTimeout:
        return ServerFailure(dioException.message!);
      case DioExceptionType.receiveTimeout:
        return ServerFailure(dioException.message!);
      case DioExceptionType.badCertificate:
        return ServerFailure(dioException.message!);
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response?.statusCode,
          dioException.response?.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(dioException.message!);
      case DioExceptionType.connectionError:
        return ServerFailure(dioException.message!);
      case DioExceptionType.unknown:
        return ServerFailure(dioException.message!);
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else {
      return ServerFailure('Opps there was an error, Please try later!');
    }
  }
}
