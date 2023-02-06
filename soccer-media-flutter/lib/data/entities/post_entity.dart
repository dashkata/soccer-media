import 'package:json_annotation/json_annotation.dart';
import 'package:soccer_media_flutter/data/entities/user_entity.dart';
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
  factory PostEntity.fromJson(Map<String, dynamic> json) => _$PostEntityFromJson(json);
  Map<String, dynamic> toJson() => _$PostEntityToJson(this);
}
