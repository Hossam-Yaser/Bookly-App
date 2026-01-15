import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _searchRepo;

  SearchCubit(this._searchRepo) : super(SearchInitial());

  Future<void> searchAboutBooks({required String searchKey}) async {
    emit(SearchLoading());

    var result = await _searchRepo.searchAboutBooks(searchKey: searchKey);
    result.fold(
      (booksList) {
        emit(SearchSuccess(searchResultList: booksList));
      },
      (failure) {
        emit(SearchFailure(failure.errorMessage));
      },
    );
  }
}
