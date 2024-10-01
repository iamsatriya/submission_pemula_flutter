import 'package:flutter/material.dart';

class CustomNavigationbar extends StatelessWidget {
  final int currentPageIndex;
  final void Function(int) onDestinationSelected;
  const CustomNavigationbar(
      {super.key,
      required this.currentPageIndex,
      required this.onDestinationSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      margin: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
      child: NavigationBar(
        height: 60,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        onDestinationSelected: onDestinationSelected,
        indicatorColor: Colors.yellow,
        backgroundColor: Colors.transparent,
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
