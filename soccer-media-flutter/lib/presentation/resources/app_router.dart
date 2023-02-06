import 'package:flutter/material.dart';
import 'package:soccer_media_flutter/presentation/screens/forgot_password/forgot_password.dart';
import 'package:soccer_media_flutter/presentation/screens/posts/posts.dart';
import 'package:soccer_media_flutter/presentation/screens/register/register.dart';

import '../screens/login/login.dart';
import '../screens/profile/profile.dart';

class AppRoute {
  static const String login = 'login';
  static const String register = 'register';
  static const String forgotPassword = 'forgot_password';
  static const String posts = 'posts';
  static const String profile = 'profile';
}

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case AppRoute.register:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case AppRoute.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordScreen(),
        );
      case AppRoute.posts:
        return MaterialPageRoute(
          builder: (_) => const PostScreen(),
        );
      case AppRoute.profile:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      default:
        throw const FormatException('Route not found! Check routes again!');
    }
  }
}
