import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'futuredbooks_state.dart';

class FuturedbooksCubit extends Cubit<FuturedbooksState> {
  FuturedbooksCubit() : super(FuturedbooksInitial());
}
