import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<List<BookResponseModel>, Failure>>
  fetchBestSellerBooks() async {
    try {
      List<BookResponseModel> newestBooksList = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest',
      );
      return Left(newestBooksList);
    } catch (e) {
      if (e is DioException) {
        return Right(ServerFailure.fromDioException(e));
      } else {
        return Right(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<List<BookResponseModel>, Failure>> fetchFuturedBooks() async {
    try {
      List<BookResponseModel> futuredBooksList = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming',
      );
      return Left(futuredBooksList);
    } catch (e) {
      if (e is DioException) {
        return Right(ServerFailure.fromDioException(e));
      } else {
        return Right(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<List<BookResponseModel>, Failure>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      List<BookResponseModel> similarBooksList = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=relevance&q=subject:$category',
      );
      return Left(similarBooksList);
    } catch (e) {
      if (e is DioException) {
        return Right(ServerFailure.fromDioException(e));
      } else {
        return Right(ServerFailure(e.toString()));
      }
    }
  }
}
