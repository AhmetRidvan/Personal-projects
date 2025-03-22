import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morty/views/characters_view/characters_view.dart';
import 'package:rick_and_morty/views/favorites_view/favorites_view.dart';
import 'package:rick_and_morty/views/locations_view.dart/locations_view.dart';
import 'package:rick_and_morty/views/main_view.dart';
import 'package:rick_and_morty/views/sections_view/sections_view.dart';

final _key = GlobalKey<NavigatorState>();

class Paths {
  Paths._();

  static const String characters = '/';
  static const String favorites = '/favorites';
  static const String locations = '/locations';
  static const String sections = '/sections';
}

class Ssl {
  StatefulShellBranch hi(String p, Widget w1,) {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: p,
          builder: (context, state) {
            return w1;
          },
        ),
      ],

    );
  }
}

final router = GoRouter( initialLocation: Paths.locations,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainView(nS: navigationShell);
      },
      branches: [
        Ssl().hi(Paths.characters, CharactesrsView(), ),
        Ssl().hi(Paths.favorites, FavoritesView(), ),
        Ssl().hi(Paths.locations, LocationsView(), ),
        Ssl().hi(Paths.sections, SectionsView(), ),
      ],
    ),
  ],
);
