part of 'bestsellerbooks_cubit.dart';

abstract class BestsellerbookscubitState extends Equatable {
  const BestsellerbookscubitState();

  @override
  List<Object> get props => [];
}

class BestsellerbookscubitInitial extends BestsellerbookscubitState {}

class BestsellerbookscubitLoading extends BestsellerbookscubitState {}

class BestsellerbookscubitSuccess extends BestsellerbookscubitState {
  final List<BookResponseModel> bestSellerBooksList;

  const BestsellerbookscubitSuccess(this.bestSellerBooksList);
}

class BestsellerbookscubitFailure extends BestsellerbookscubitState {
  final String errorMessage;
  const BestsellerbookscubitFailure(this.errorMessage);
}
