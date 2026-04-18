import 'package:flutter/material.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: (int value) {
        setState(() {
          currentIndex = value;
        });
      },

      //Your required at least 2 destinations in order to show the navigation bar
      //Otherwise, it will not show the navigation bar and you will get an error
      destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: 'None'), //sd
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'), //sd
      ],
    );
  }
}
