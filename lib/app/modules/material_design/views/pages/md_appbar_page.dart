import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MdAppbarPage extends StatefulWidget {
  const MdAppbarPage({super.key});

  @override
  State<MdAppbarPage> createState() => _MdAppbarPageState();
}

class _MdAppbarPageState extends State<MdAppbarPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Examples'),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          elevation: 4,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Search clicked')),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('More options clicked')),
                );
              },
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text(
              'AppBar Widget Examples',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'AppBar adalah widget Material Design yang menampilkan toolbar di bagian atas aplikasi.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            
            _buildExampleCard(
              'Basic AppBar',
              'AppBar sederhana dengan title',
              _buildBasicAppBarExample(),
            ),
            
            _buildExampleCard(
              'AppBar with Actions',
              'AppBar dengan action buttons (lihat di top)',
              Container(
                padding: const EdgeInsets.all(16),
                child: const Text('Lihat bagian atas halaman ini untuk contoh AppBar dengan actions (search & menu)'),
              ),
            ),
            
            _buildExampleCard(
              'Colored AppBar',
              'AppBar dengan berbagai warna',
              Column(
                children: [
                  _buildColoredAppBar(Colors.blue, 'Blue AppBar'),
                  const SizedBox(height: 8),
                  _buildColoredAppBar(Colors.green, 'Green AppBar'),
                  const SizedBox(height: 8),
                  _buildColoredAppBar(Colors.orange, 'Orange AppBar'),
                ],
              ),
            ),
            
            _buildExampleCard(
              'AppBar with Bottom Tab',
              'AppBar dengan TabBar di bagian bawah',
              _buildAppBarWithTabs(),
            ),
            
            const SizedBox(height: 16),
            const Text(
              '💡 Tips:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildTip('• Gunakan centerTitle: true untuk menempatkan title di tengah'),
            _buildTip('• elevation mengatur shadow/bayangan AppBar'),
            _buildTip('• actions menerima list of widgets untuk tombol aksi'),
            _buildTip('• leading widget untuk tombol kembali atau drawer'),
          ],
        ),
      ),
    );
  }

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

  Widget _buildBasicAppBarExample() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: AppBar(
          title: const Text('Simple Title'),
          automaticallyImplyLeading: false,
        ),
      ),
    );
  }

  Widget _buildColoredAppBar(Color color, String title) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: AppBar(
          title: Text(title),
          backgroundColor: color,
          foregroundColor: Colors.white,
          automaticallyImplyLeading: false,
        ),
      ),
    );
  }

  Widget _buildAppBarWithTabs() {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: AppBar(
          title: const Text('Tabs Example'),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.star), text: 'Favorites'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
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
