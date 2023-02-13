import 'package:json_annotation/json_annotation.dart';
import 'package:soccer_media_flutter/data/entities/user_entity.dart';

import '../../domain/models/post_model.dart';

part 'post_entity.g.dart';

@JsonSerializable()
class PostEntity {
  final String? id;
  final String? message;
  final int? likes;
  final UserEntity? user;

  PostEntity({
    required this.id,
    required this.message,
    required this.likes,
    required this.user,
  });

  factory PostEntity.fromPostModel(PostModel postModel) => PostEntity(
        id: postModel.id,
        message: postModel.message,
        likes: postModel.likes,
        user: UserEntity.fromUserModel(postModel.user),
      );

  PostModel toPostModel() => PostModel(
        id: id ?? '',
        likes: likes ?? 0,
        message: message ?? '',
        user: user?.toUserModel() ?? UserEntity.defaultUser().toUserModel(),
      );

  factory PostEntity.fromJson(Map<String, dynamic> json) =>
      _$PostEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PostEntityToJson(this);
}
