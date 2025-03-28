import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/views/screens/characters_view/characters_view.dart';
import 'package:rick_and_morty/views/screens/characters_view/characters_view_model.dart';
import 'package:rick_and_morty/views/screens/favorites_view/favorites_view.dart';
import 'package:rick_and_morty/views/screens/locations_view.dart/locations_view.dart';
import 'package:rick_and_morty/views/app_wiev.dart';
import 'package:rick_and_morty/views/screens/sections_view/sections_view.dart';
import 'package:provider/provider.dart';

final ke = GlobalKey<NavigatorState>();

final AppRoutes = GoRouter(
  navigatorKey: ke,
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        //navigationShell hangi index'te olduğumuzu tutuyor.
        return AppView(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) {
                return ChangeNotifierProvider(
                  child: CharactesrsView(),
                  create: (context) {
                    return CharactersViewModel(); 
                  },
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favo',
              builder: (context, state) {
                return FavoritesView();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/loca',
              builder: (context, state) {
                return LocationsView();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/secti',
              builder: (context, state) {
                return SectionsView();
              },
            ),
          ],
        ),
      ],
    ),
  ],
); // sabit kalıcak kısım
