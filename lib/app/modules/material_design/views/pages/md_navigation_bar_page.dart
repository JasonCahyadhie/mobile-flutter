import 'package:flutter/material.dart';

class MdNavigationBarPage extends StatefulWidget {
  const MdNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<MdNavigationBarPage> createState() => _MdNavigationBarPageState();
}

class _MdNavigationBarPageState extends State<MdNavigationBarPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text('Explore', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Commute', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Saved', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationBar (Material 3)'),
        backgroundColor: Colors.blue,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.commute_outlined),
            selectedIcon: Icon(Icons.commute),
            label: 'Commute',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_border),
            selectedIcon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
        ],
      ),
    );
  }
}
