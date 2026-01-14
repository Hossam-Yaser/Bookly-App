import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'futuredbooks_state.dart';

class FuturedbooksCubit extends Cubit<FuturedbooksState> {
  final HomeRepo _homeRepo;
  FuturedbooksCubit(this._homeRepo) : super(FuturedbooksInitial());

  Future<void> fetchFuturedBooks() async {
    emit(FuturedbooksLoading());
    var result = await _homeRepo.fetchFuturedBooks();

    result.fold(
      (booksList) {
        emit(FuturedbooksSuccess(booksList));
      },
      (failure) {
        emit(FuturedbooksFailure(failure.errorMessage));
      },
    );
  }
}
