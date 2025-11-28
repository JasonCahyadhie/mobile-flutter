import 'package:flutter/material.dart';

class MdTabBarViewPage extends StatefulWidget {
  const MdTabBarViewPage({Key? key}) : super(key: key);

  @override
  State<MdTabBarViewPage> createState() => _MdTabBarViewPageState();
}

class _MdTabBarViewPageState extends State<MdTabBarViewPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBarView'),
        backgroundColor: Colors.blue,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(text: 'Photos', icon: Icon(Icons.photo)),
            Tab(text: 'Videos', icon: Icon(Icons.video_library)),
            Tab(text: 'Music', icon: Icon(Icons.music_note)),
            Tab(text: 'Documents', icon: Icon(Icons.description)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildTabContent(
            icon: Icons.photo,
            title: 'Photos',
            description: 'Browse your photo library',
            color: Colors.blue,
          ),
          _buildTabContent(
            icon: Icons.video_library,
            title: 'Videos',
            description: 'Watch your videos',
            color: Colors.red,
          ),
          _buildTabContent(
            icon: Icons.music_note,
            title: 'Music',
            description: 'Listen to your music',
            color: Colors.purple,
          ),
          _buildTabContent(
            icon: Icons.description,
            title: 'Documents',
            description: 'View your documents',
            color: Colors.orange,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            int nextIndex = (_tabController.index + 1) % 4;
            _tabController.animateTo(nextIndex);
          });
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }

  Widget _buildTabContent({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
  }) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 100, color: color),
          const SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: color),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(height: 40),
          ElevatedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$title button pressed')),
              );
            },
            icon: Icon(icon),
            label: Text('Open $title'),
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}
