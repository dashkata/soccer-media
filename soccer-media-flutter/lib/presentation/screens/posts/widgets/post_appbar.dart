part of '../posts.dart';

class _PostsAppBar extends StatelessWidget with PreferredSizeWidget {
  const _PostsAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 20),
        child: Text(
          'Soccer Media',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
