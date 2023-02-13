import 'package:soccer_media_flutter/data/data_sources/api.dart';
import 'package:soccer_media_flutter/domain/models/post_model.dart';
import 'package:soccer_media_flutter/domain/repositories/post_repository.dart';

class APIRepository implements PostsRepo {
  final API _api;

  APIRepository({required API api}) : _api = api;

  @override
  Future<List<PostModel>> getAllPosts() async {
    final postEntities = await _api.getPosts();
    return postEntities.map((post) => post.toPostModel()).toList();
  }
}
