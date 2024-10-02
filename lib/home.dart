import 'package:flutter/material.dart';
import 'package:submission_pemula/components/custom_navigation_bar.dart';
import 'package:submission_pemula/screens/profile_screen.dart';
import 'package:submission_pemula/screens/summary_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationbar(
        currentPageIndex: _currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
      ),
      body: const [
        SummaryScreen(),
        ProfileScreen(),
      ][_currentPageIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
