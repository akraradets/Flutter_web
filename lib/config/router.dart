import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../layouts/layout.dart';

import '../pages/home.dart';
import '../pages/detail.dart';

// The route configuration.
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final GoRouter router =
    GoRouter(navigatorKey: _rootNavigatorKey, initialLocation: '/', routes: [
  ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => MainLayout(body: child),
      routes: [home, detail])
]);

final home = GoRoute(
  name: 'home',
  path: '/',
  parentNavigatorKey: _shellNavigatorKey,
  builder: (context, state) =>
      const MyHomePage(title: 'Flutter Demo Home Page'),
);
final detail = GoRoute(
  name: 'detail',
  path: '/detail',
  parentNavigatorKey: _shellNavigatorKey,
  builder: (context, state) => const DetailsScreen(),
);
