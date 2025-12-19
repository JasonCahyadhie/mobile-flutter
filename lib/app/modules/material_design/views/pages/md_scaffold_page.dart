import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MdScaffoldPage extends StatefulWidget {
  const MdScaffoldPage({super.key});

  @override
  State<MdScaffoldPage> createState() => _MdScaffoldPageState();
}

class _MdScaffoldPageState extends State<MdScaffoldPage> {
  int _selectedIndex = 0;
  bool _showFAB = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold Examples'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40, color: Colors.indigo),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Demo Drawer',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Scaffold Widget Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Scaffold adalah widget dasar Material Design yang menyediakan struktur visual app dengan AppBar, Body, Drawer, FloatingActionButton, dan Bottom Navigation.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          _buildExampleCard(
            'Basic Scaffold Structure',
            'Scaffold dengan AppBar dan Body',
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('✓ AppBar (di bagian atas)'),
                const Text('✓ Body (konten utama)'),
                const Text('✓ Drawer (swipe dari kiri atau tap menu)'),
                const Text('✓ FloatingActionButton (tombol + di kanan bawah)'),
                const Text('✓ BottomNavigationBar (navigasi di bawah)'),
              ],
            ),
          ),
          
          _buildExampleCard(
            'Drawer',
            'Drawer dapat dibuka dari kiri',
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(Icons.menu, color: Colors.indigo),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text('Tap icon menu di AppBar atau swipe dari kiri untuk membuka Drawer'),
                  ),
                ],
              ),
            ),
          ),
          
          _buildExampleCard(
            'FloatingActionButton',
            'Tombol aksi mengambang',
            Row(
              children: [
                Checkbox(
                  value: _showFAB,
                  onChanged: (value) {
                    setState(() => _showFAB = value ?? true);
                  },
                ),
                const Text('Show/Hide FAB'),
              ],
            ),
          ),
          
          _buildExampleCard(
            'Bottom Navigation Bar',
            'Navigasi di bagian bawah',
            Container(
              padding: const EdgeInsets.all(8),
              child: Text('Current tab: ${_tabNames[_selectedIndex]}', 
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ),
          
          const SizedBox(height: 16),
          const Text(
            '💡 Tips:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          _buildTip('• Scaffold menyediakan struktur dasar Material Design'),
          _buildTip('• Gunakan drawer untuk navigasi menu samping'),
          _buildTip('• FloatingActionButton untuk aksi utama (add, create, etc)'),
          _buildTip('• BottomNavigationBar untuk navigasi antar halaman utama'),
        ],
      ),
      floatingActionButton: _showFAB
          ? FloatingActionButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('FAB pressed!')),
                );
              },
              backgroundColor: Colors.indigo,
              child: const Icon(Icons.add, color: Colors.white),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
        selectedItemColor: Colors.indigo,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  final List<String> _tabNames = ['Home', 'Search', 'Profile'];

  Widget _buildExampleCard(String title, String description, Widget example) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),
            example,
          ],
        ),
      ),
    );
  }

  Widget _buildTip(String tip) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(tip, style: const TextStyle(fontSize: 14)),
    );
  }
}
