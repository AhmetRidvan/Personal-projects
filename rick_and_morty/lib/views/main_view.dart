import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainView extends StatelessWidget {
  MainView({super.key, required this.nS});
  StatefulNavigationShell nS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nS,
      appBar: _appBarWidget(),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return TextStyle(color: Theme.of(context).colorScheme.primary);
            } else {
              return TextStyle(color: Theme.of(context).colorScheme.tertiary);
            }
          }),
        ),
        child: NavigationBar(
          selectedIndex: nS.currentIndex,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (value) {
            nS.goBranch(value);
          },

          destinations: [
            _menuItem(
              ct: context,
              who: 0,
              currentIndex: nS.currentIndex,
              label: 'Karakterler',
              icon1: Icons.face,
            ),
            _menuItem(
              ct: context,
              who: 1,
              currentIndex: nS.currentIndex,
              label: 'Favorilerim',
              icon1: Icons.bookmark,
            ),
            _menuItem(
              ct: context,
              who: 2,
              currentIndex: nS.currentIndex,
              label: 'Konumlar',
              icon1: Icons.location_on,
            ),
            _menuItem(
              ct: context,
              who: 3,
              currentIndex: nS.currentIndex,
              label: 'Bölümler',
              icon1: Icons.menu,
            ),
          ],
        ),
      ),
    );
  }

  NavigationDestination _menuItem({
    required BuildContext ct,
    required int who,
    required int currentIndex,
    required String label,
    required IconData icon1,
  }) {
    return NavigationDestination(
      icon: Icon(
        icon1,
        color:
            who == currentIndex
                ? Theme.of(ct).colorScheme.primary
                : Theme.of(ct).colorScheme.tertiary,
      ),
      label: label,
    );
  }

  AppBar _appBarWidget() {
    return AppBar(
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      title: Text('Rick and Morty'),
    );
  }
}
