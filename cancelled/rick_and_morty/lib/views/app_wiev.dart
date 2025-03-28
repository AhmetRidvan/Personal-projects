import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppView extends StatelessWidget {
  AppView({super.key, required this.navigationShell});
  StatefulNavigationShell navigationShell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: navigationShell,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
            return TextStyle(color: Colors.white);
          }),
        ),
        child: NavigationBar(
          indicatorColor: Colors.yellow,
          backgroundColor: Color(0xFF42B4CA),
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: (value) {
            navigationShell.goBranch(value);
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.face, color: Colors.white),
              label: 'Karakterler',
            ),
            NavigationDestination(
              icon: Icon(Icons.bookmark, color: Colors.white),
              label: 'Favorilerim',
            ),
            NavigationDestination(
              icon: Icon(Icons.location_on, color: Colors.white),
              label: 'Konumlar',
            ),
            NavigationDestination(
              icon: Icon(Icons.menu, color: Colors.white),
              label: 'Bölümler',
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBarWidget() {
    return AppBar(
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      title: Text('Rick and Morty'),
    );
  }
}
