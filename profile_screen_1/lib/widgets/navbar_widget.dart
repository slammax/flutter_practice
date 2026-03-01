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
          elevation: 8,
          shadowColor: Colors.black,

          destinations: [
            NavDestination(
              icon: Icons.person_outline,
              label: 'Account',
              selectedIcon: Icons.person_outline,
            ),
            NavDestination(
              icon: Icons.search_outlined,
              label: 'Jobs',
              selectedIcon: Icons.search,
            ),
            NavDestination(
              icon: Icons.attach_money_outlined,
              label: 'Balance',
              selectedIcon: Icons.attach_money,
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

class IconNavBarStyle extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final Color color;

  const IconNavBarStyle({
    super.key,
    required this.icon,
    this.isActive = false,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(icon, size: isActive ? 40 : 30, color: color);
  }
}

class NavDestination extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  final Color inactiveColor;
  final Color activeColor;
  final String label;

  const NavDestination({
    super.key,
    required this.icon,
    required this.label,
    required this.selectedIcon,
    this.inactiveColor = const Color.fromARGB(255, 188, 188, 188),
    this.activeColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: IconNavBarStyle(icon: icon, color: inactiveColor, isActive: false),
      selectedIcon: IconNavBarStyle(
        icon: selectedIcon,
        color: activeColor,
        isActive: true,
      ),
      label: label,
    );
  }
}
