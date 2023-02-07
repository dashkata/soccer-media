import 'package:dio/dio.dart';
import 'package:soccer_media_flutter/data/repostiories/api_repository.dart';

import '../../data/data_sources/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/repositories/post_repository.dart';

part 'singletons.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  return Dio();
}

@Riverpod(keepAlive: true)
API api(ApiRef ref) => API(
      dio: ref.watch(dioProvider),
    );

@Riverpod(keepAlive: true)
APIRepository apiRepository(ApiRepositoryRef ref) => APIRepository(
      api: ref.watch(apiProvider),
    );

@Riverpod(keepAlive: true)
PostsRepo postsRepo(PostsRepoRef ref) => ref.watch(apiRepositoryProvider);
