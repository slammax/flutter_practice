import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,

      builder: (context, selectedPage, child) {
        return NavigationBar(
          indicatorColor: Colors.transparent,
          backgroundColor: Colors.white,

          destinations: [
            NavigationDestination(
              icon: Icon(Icons.person_outline, size: 40),
              label: 'Account',
              selectedIcon: Icon(Icons.person, size: 40),
            ),
            NavigationDestination(
              icon: Icon(Icons.search_outlined, size: 40),
              label: 'Jobs',
              selectedIcon: Icon(Icons.search, size: 40),
            ),
            NavigationDestination(
              icon: Icon(Icons.attach_money_outlined, size: 40),
              label: 'Balance',
              selectedIcon: Icon(Icons.attach_money, size: 40),
            ),
          ],
          selectedIndex: selectedPage,
          onDestinationSelected: (value) {
            selectedPageNotifier.value = value;
          },
        );
      },
    );
  }
}
