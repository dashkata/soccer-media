import 'package:json_annotation/json_annotation.dart';
import 'package:soccer_media_flutter/domain/models/user_model.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity {
  final String? id;
  final String? email;
  final String? name;
  final String? username;

  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
  });

  factory UserEntity.defaultUser() => UserEntity(
        id: '',
        name: '',
        email: '',
        username: '',
      );

  factory UserEntity.fromUserModel(UserModel userModel) => UserEntity(
        id: userModel.id,
        name: userModel.name,
        email: userModel.email,
        username: userModel.username,
      );

  UserModel toUserModel() => UserModel(
        id: id ?? '',
        name: name ?? '',
        email: email ?? '',
        username: username ?? '',
      );

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
