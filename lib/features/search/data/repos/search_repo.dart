import 'package:bookly_app/core/error/failure.dart';
import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<List<BookResponseModel>, Failure>> searchAboutBooks({
    required String searchKey,
  });
}
