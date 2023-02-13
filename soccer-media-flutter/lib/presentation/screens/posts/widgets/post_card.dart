part of '../posts.dart';

class PostCard extends ConsumerWidget {
  const PostCard({
    required this.post,
    Key? key,
  }) : super(key: key);
  final PostModel post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: CircleAvatar(
                      radius: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      post.user.name,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  top: 12,
                ),
                child: Text(
                  post.message,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 21, 24, 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _IconRow(
                      post: post,
                      icon: const Icon(Icons.favorite_outline),
                      text: post.likes.toString(),
                    ),
                    _IconRow(
                      post: post,
                      icon: const Icon(Icons.comment),
                      text: post.likes.toString(),
                    ),
                    _IconRow(
                      post: post,
                      icon: const Icon(Icons.share_outlined),
                      text: post.likes.toString(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            height: 0,
          ),
        ],
      ),
    );
  }
}

class _IconRow extends StatelessWidget {
  const _IconRow({
    Key? key,
    required this.icon,
    required this.text,
    required this.post,
  }) : super(key: key);

  final PostModel post;
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          constraints: const BoxConstraints(),
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: icon,
          iconSize: 30,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
        ),
      ],
    );
  }
}
