import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bestsellerbooks_state.dart';

class BestsellerbookscubitCubit extends Cubit<BestsellerbookscubitState> {
  final HomeRepo _homeRepo;
  BestsellerbookscubitCubit(this._homeRepo)
    : super(BestsellerbookscubitInitial());

  Future<void> fetchBestSellerBooks() async {
    emit(BestsellerbookscubitLoading());

    var result = await _homeRepo.fetchBestSellerBooks();
    result.fold(
      (booksList) {
        emit(BestsellerbookscubitSuccess(booksList));
      },
      (failure) {
        emit(BestsellerbookscubitFailure(failure.errorMessage));
      },
    );
  }
}
