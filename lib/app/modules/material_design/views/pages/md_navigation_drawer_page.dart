import 'package:flutter/material.dart';

class MdNavigationDrawerPage extends StatefulWidget {
  const MdNavigationDrawerPage({Key? key}) : super(key: key);

  @override
  State<MdNavigationDrawerPage> createState() => _MdNavigationDrawerPageState();
}

class _MdNavigationDrawerPageState extends State<MdNavigationDrawerPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationDrawer'),
        backgroundColor: Colors.blue,
      ),
      drawer: NavigationDrawer(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          Navigator.pop(context);
        },
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
            child: Text(
              'Header',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.inbox_outlined),
            selectedIcon: Icon(Icons.inbox),
            label: Text('Inbox'),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.send_outlined),
            selectedIcon: Icon(Icons.send),
            label: Text('Outbox'),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.favorite_border),
            selectedIcon: Icon(Icons.favorite),
            label: Text('Favorites'),
          ),
          const Divider(indent: 28, endIndent: 28),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Text('Labels'),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.label_outline),
            selectedIcon: Icon(Icons.label),
            label: Text('Family'),
          ),
          const NavigationDrawerDestination(
            icon: Icon(Icons.label_outline),
            selectedIcon: Icon(Icons.label),
            label: Text('Work'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected: ${_getSelectedLabel()}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            const Text('Open drawer to navigate'),
          ],
        ),
      ),
    );
  }

  String _getSelectedLabel() {
    switch (_selectedIndex) {
      case 0:
        return 'Inbox';
      case 1:
        return 'Outbox';
      case 2:
        return 'Favorites';
      case 3:
        return 'Family';
      case 4:
        return 'Work';
      default:
        return '';
    }
  }
}
