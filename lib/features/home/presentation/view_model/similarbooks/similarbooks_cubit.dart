import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similarbooks_state.dart';

class SimilarbooksCubit extends Cubit<SimilarbooksState> {
  final HomeRepo _homeRepo;
  final String category;
  SimilarbooksCubit(this._homeRepo, {required this.category})
    : super(SimilarbooksInitial());

  Future<void> fetchSimilarBooks() async {
    emit(SimilarbooksLoading());
    var result = await _homeRepo.fetchSimilarBooks(category: category);

    result.fold(
      (booksList) {
        emit(SimilarbooksSuccess(booksList));
      },
      (failure) {
        emit(Similarbooksfailure(failure.errorMessage));
      },
    );
  }
}
