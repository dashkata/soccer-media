import 'package:json_annotation/json_annotation.dart';
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
  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
