import 'package:bookly_app/features/home/data/models/book_response_model/book_response_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  final String _baseURL = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  ApiService(this._dio);
  Future<List<BookResponseModel>> get({required String endPoint}) async {
    List<BookResponseModel> booksList = [];
    var response = await _dio.get('$_baseURL$endPoint');
    for (var item in response.data['items']) {
      booksList.add(BookResponseModel.fromJson(item));
    }
    return booksList;
  }
}
