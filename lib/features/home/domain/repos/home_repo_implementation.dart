import 'package:bookly_app/features/home/domain/repos/home_repo.dart';

class HomeRepoImplementation extends HomeRepo {
  Future<List<BookEntity>> getNewestBooks() {}
  Future<List<BookEntity>> getSimilarBooks() {}
}
