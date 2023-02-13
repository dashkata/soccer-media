import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soccer_media_flutter/domain/models/post_model.dart';
import 'package:soccer_media_flutter/presentation/resources/themes.dart';
import 'package:soccer_media_flutter/presentation/screens/posts/controllers/posts_controller.dart';

part 'widgets/post_appbar.dart';

part 'widgets/post_card.dart';

class PostScreen extends ConsumerWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPosts = ref.watch(postsControllerProvider);
    return Scaffold(
      appBar: const _PostsAppBar(),
      floatingActionButton: SizedBox(
        height: 63,
        width: 63,
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: Themes.accentColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 2,
              color: Themes.complementaryColor,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 50,
          ),
        ),
      ),
      body: asyncPosts.when(
        data: (posts) => Center(
          child: Column(
            children: List.generate(
              posts.length,
              (index) => PostCard(
                post: posts.elementAt(index),
              ),
            ),
          ),
        ),
        error: (e, s) => Center(
          child: Text(
            e.toString(),
            style: const TextStyle(fontSize: 10),
          ),
        ),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
