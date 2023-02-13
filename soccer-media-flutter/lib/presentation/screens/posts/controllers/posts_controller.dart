import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:soccer_media_flutter/presentation/providers/singletons.dart';

import '../../../../domain/models/post_model.dart';

part 'posts_controller.g.dart';

@riverpod
class PostsController extends _$PostsController {
  @override
  Future<List<PostModel>> build() async {
    final posts = await ref.read(postsRepoProvider).getAllPosts();
    return posts;
  }

}
