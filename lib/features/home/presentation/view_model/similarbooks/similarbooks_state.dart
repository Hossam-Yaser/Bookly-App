part of 'similarbooks_cubit.dart';

abstract class SimilarbooksState extends Equatable {
  const SimilarbooksState();

  @override
  List<Object> get props => [];
}

class SimilarbooksInitial extends SimilarbooksState {}

class SimilarbooksLoading extends SimilarbooksState {}

class SimilarbooksSuccess extends SimilarbooksState {
  final List<BookResponseModel> similarBooksList;
  const SimilarbooksSuccess(this.similarBooksList);
}

class Similarbooksfailure extends SimilarbooksState {
  final String errorMessage;
  const Similarbooksfailure(this.errorMessage);
}
