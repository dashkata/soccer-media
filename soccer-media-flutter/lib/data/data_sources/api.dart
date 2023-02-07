import 'package:dio/dio.dart';
import 'package:soccer_media_flutter/data/data_sources/endpoints.dart';

import '../entities/post_entity.dart';

class API {
  final Dio _dio;

  API({required Dio dio}) : _dio = dio;

  Future<List<PostEntity>> getPosts() async {
    final response = await _dio.get(Endpoint.allPosts());
    final data = response.data as List<dynamic>;
    return data.map((entity) => PostEntity.fromJson(entity)).toList();
  }
}
