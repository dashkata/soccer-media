import 'package:dio/dio.dart';
import 'package:soccer_media_flutter/data/data_sources/endpoints.dart';

import '../entities/post_entity.dart';

class API {
  final dio = Dio();

  Future<PostEntity> getPosts() async {
    final response = await dio.get(Endpoint.allPosts());
    return PostEntity.fromJson(response.data);
  }
}
