import 'package:flutter/material.dart';
import 'package:pet/index.dart';
import 'package:routemaster/routemaster.dart';

class AppRouter {
  static const String userIdSearchPath = '/';
  static const String infoUserPath = '/info';
  static const String usersListPath = '/users';

  late final RouteMap router = RouteMap(
    routes: <String, PageBuilder>{
      userIdSearchPath: (_) => const MaterialPage<void>(
            child: UserIdSearchScreen(),
          ),
      '$infoUserPath/:id': (RouteData route) => MaterialPage<void>(
            child: InfoUserScreen(
              id: route.pathParameters['id'] != null
                  ? route.pathParameters['id']!
                  : '',
            ),
          ),
      usersListPath: (_) => const MaterialPage<void>(
            child: UsersListScreen(),
          ),
    },
  );
}
