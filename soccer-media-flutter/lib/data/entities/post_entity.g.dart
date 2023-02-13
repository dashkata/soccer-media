// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostEntity _$PostEntityFromJson(Map<String, dynamic> json) => PostEntity(
      id: json['id'] as String?,
      message: json['message'] as String?,
      likes: json['likes'] as int?,
      user: json['user'] == null
          ? null
          : UserEntity.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostEntityToJson(PostEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'likes': instance.likes,
      'user': instance.user,
    };
