part of 'bestsellerbooks_cubit.dart';

abstract class BestsellerbooksState extends Equatable {
  const BestsellerbooksState();

  @override
  List<Object> get props => [];
}

class BestsellerbooksInitial extends BestsellerbooksState {}

class BestsellerbooksLoading extends BestsellerbooksState {}

class BestsellerbooksSuccess extends BestsellerbooksState {
  final List<BookResponseModel> bestSellerBooksList;

  const BestsellerbooksSuccess(this.bestSellerBooksList);
}

class BestsellerbooksFailure extends BestsellerbooksState {
  final String errorMessage;
  const BestsellerbooksFailure(this.errorMessage);
}
