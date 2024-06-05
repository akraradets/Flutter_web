import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'config/router.dart';
import 'config/themes.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      routerConfig: router,
    );
  }
}
