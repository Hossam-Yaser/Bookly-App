import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:equatable/equatable.dart';

part 'bestsellerbooks_state.dart';

class BestsellerbookscubitCubit extends Cubit<BestsellerbookscubitState> {
  BestsellerbookscubitCubit() : super(BestsellerbookscubitInitial());
}
