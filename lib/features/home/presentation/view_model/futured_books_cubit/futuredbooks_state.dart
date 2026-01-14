part of 'futuredbooks_cubit.dart';

abstract class FuturedbooksState extends Equatable {
  const FuturedbooksState();

  @override
  List<Object> get props => [];
}

class FuturedbooksInitial extends FuturedbooksState {}

class FuturedbooksLoading extends FuturedbooksState {}

class FuturedbooksSuccess extends FuturedbooksState {
  final List<BookResponseModel> futureBooksList;
  const FuturedbooksSuccess(this.futureBooksList);
}

class FuturedbooksFailure extends FuturedbooksState {
  final String errorMessage;
  const FuturedbooksFailure(this.errorMessage);
}
