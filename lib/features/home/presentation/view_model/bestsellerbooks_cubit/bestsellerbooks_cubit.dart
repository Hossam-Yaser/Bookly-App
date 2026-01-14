import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bestsellerbooks_state.dart';

class BestsellerbooksCubit extends Cubit<BestsellerbooksState> {
  final HomeRepo _homeRepo;
  BestsellerbooksCubit(this._homeRepo) : super(BestsellerbooksInitial());

  Future<void> fetchBestSellerBooks() async {
    emit(BestsellerbooksLoading());

    var result = await _homeRepo.fetchBestSellerBooks();
    result.fold(
      (booksList) {
        emit(BestsellerbooksSuccess(booksList));
      },
      (failure) {
        emit(BestsellerbooksFailure(failure.errorMessage));
      },
    );
  }
}
