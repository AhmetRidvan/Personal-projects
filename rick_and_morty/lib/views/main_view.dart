import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainView extends StatelessWidget {
  MainView({super.key, required this.nS});
  StatefulNavigationShell nS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      bottomNavigationBar: NavigationBar(
        selectedIndex: nS.currentIndex,
        indicatorColor: Colors.transparent,
        onDestinationSelected: (value) {
          nS.goBranch(value);
        },

        destinations: [
          NavigationDestination(icon: Icon(Icons.face), label: "Karakterler"),
          NavigationDestination(
            icon: Icon(Icons.bookmark),
            label: "Favorilerim",
          ),
          NavigationDestination(
            icon: Icon(Icons.location_on),
            label: "Karakterler",
          ),
          NavigationDestination(icon: Icon(Icons.menu), label: "Bölümler"),
        ],
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
