import 'package:soccer_media_flutter/domain/models/user_model.dart';

class PostModel {
  final String id;
  final String message;
  final int likes;
  final UserModel user;

  PostModel({
    required this.id,
    required this.message,
    required this.likes,
    required this.user,
  });
}
