import 'package:flutter/material.dart';

class MdNavigationRailPage extends StatefulWidget {
  const MdNavigationRailPage({Key? key}) : super(key: key);

  @override
  State<MdNavigationRailPage> createState() => _MdNavigationRailPageState();
}

class _MdNavigationRailPageState extends State<MdNavigationRailPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text('First Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Second Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Third Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationRail'),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.bookmark),
                label: Text('Bookmarks'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings_outlined),
                selectedIcon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
