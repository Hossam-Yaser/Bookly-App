import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  final String _baseURL = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  List<BookResponseModel> booksList = [];
  ApiService(this._dio);
  Future<List<BookResponseModel>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseURL$endPoint');
    for (var item in response.data['items']) {
      booksList.add(BookResponseModel.fromJson(item));
    }
    return booksList;
  }
}
