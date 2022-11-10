import 'dart:convert';

import 'package:dio/dio.dart';

import '../../domain/post/post.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<Post>> getBlogPost() async {
    try {
      final response = await _dio.get(
        'https://jsonplaceholder.typicode.com/posts',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      return postFromJson(jsonEncode(response.data));
    } on DioError catch (e) {
      throw Exception(e.error);
    }
  }
}
