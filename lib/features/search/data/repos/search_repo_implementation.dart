import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplementation implements SearchRepo {
  final ApiService apiService;
  SearchRepoImplementation(this.apiService);
  @override
  Future<Either<List<BookResponseModel>, Failure>> searchAboutBooks({
    required String searchKey,
  }) async {
    try {
      List<BookResponseModel> searchResultList = await apiService.get(
        endPoint: 'volumes?q=$searchKey',
      );
      return Left(searchResultList);
    } catch (e) {
      if (e is DioException) {
        return Right(ServerFailure.fromDioException(e));
      } else {
        return Right(ServerFailure(e.toString()));
      }
    }
  }
}
