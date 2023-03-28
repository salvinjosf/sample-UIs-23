import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

class FlashyBar extends StatefulWidget {
  const FlashyBar({Key? key}) : super(key: key);

  @override
  State<FlashyBar> createState() => _FlashyBarState();
}

class _FlashyBarState extends State<FlashyBar> {
  int _selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('Nav Bar using dependency'),
      ),
      body: const Center(
        child: Text('Google Flashy NavBar'),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        child: FlashyTabBar(
          backgroundColor: Colors.greenAccent,
          selectedIndex: _selectedindex,
          showElevation: true,
          onItemSelected: (index) => setState(() {
            _selectedindex = index;
          }),
          items: [
            FlashyTabBarItem(
              icon: const Icon(Icons.event),
              title: const Text('Events'),
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.search),
              title: const Text('Search'),
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.highlight),
              title: const Text('Highlights'),
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
            FlashyTabBarItem(
              icon: const Icon(Icons.more_horiz_rounded),
              title: const Text('More'),
            ),
          ],
        ),
      ),
    );
  }
}
