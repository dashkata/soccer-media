import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:soccer_media_flutter/presentation/resources/app_router.dart';
import 'package:soccer_media_flutter/presentation/resources/themes.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ProviderScope(
      child: MaterialApp(
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: AppRoute.posts,
        theme: Themes.appTheme(),
      ),
    ),
  );
}
