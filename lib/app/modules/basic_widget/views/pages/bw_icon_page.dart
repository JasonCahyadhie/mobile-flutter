import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BwIconPage extends StatelessWidget {
  const BwIconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Widget Examples'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Icon Widget Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Icon adalah widget untuk menampilkan ikon dari Material Icons library.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          _buildSection('Icon Sizes', [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Column(
                  children: [
                    Icon(Icons.star, size: 20),
                    SizedBox(height: 4),
                    Text('20px'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.star, size: 30),
                    SizedBox(height: 4),
                    Text('30px'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.star, size: 48),
                    SizedBox(height: 4),
                    Text('48px'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.star, size: 64),
                    SizedBox(height: 4),
                    Text('64px'),
                  ],
                ),
              ],
            ),
          ]),
          
          _buildSection('Icon Colors', [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.favorite, size: 40, color: Colors.red),
                Icon(Icons.favorite, size: 40, color: Colors.blue),
                Icon(Icons.favorite, size: 40, color: Colors.green),
                Icon(Icons.favorite, size: 40, color: Colors.orange),
                Icon(Icons.favorite, size: 40, color: Colors.purple),
              ],
            ),
          ]),
          
          _buildSection('Common Icons', [
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: const [
                _IconDemo(Icons.home, 'home'),
                _IconDemo(Icons.search, 'search'),
                _IconDemo(Icons.settings, 'settings'),
                _IconDemo(Icons.person, 'person'),
                _IconDemo(Icons.favorite, 'favorite'),
                _IconDemo(Icons.share, 'share'),
                _IconDemo(Icons.add, 'add'),
                _IconDemo(Icons.delete, 'delete'),
                _IconDemo(Icons.edit, 'edit'),
                _IconDemo(Icons.download, 'download'),
                _IconDemo(Icons.upload, 'upload'),
                _IconDemo(Icons.close, 'close'),
              ],
            ),
          ]),
          
          _buildSection('Outlined Icons', [
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: const [
                _IconDemo(Icons.home_outlined, 'home_outlined'),
                _IconDemo(Icons.favorite_outline, 'favorite_outline'),
                _IconDemo(Icons.star_outline, 'star_outline'),
                _IconDemo(Icons.settings_outlined, 'settings_outlined'),
              ],
            ),
          ]),
          
          _buildSection('Rounded Icons', [
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: const [
                _IconDemo(Icons.home_rounded, 'home_rounded'),
                _IconDemo(Icons.favorite_rounded, 'favorite_rounded'),
                _IconDemo(Icons.star_rounded, 'star_rounded'),
                _IconDemo(Icons.settings_rounded, 'settings_rounded'),
              ],
            ),
          ]),
          
          _buildSection('Sharp Icons', [
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: const [
                _IconDemo(Icons.home_sharp, 'home_sharp'),
                _IconDemo(Icons.favorite_sharp, 'favorite_sharp'),
                _IconDemo(Icons.star_sharp, 'star_sharp'),
                _IconDemo(Icons.settings_sharp, 'settings_sharp'),
              ],
            ),
          ]),
          
          _buildSection('Icon in Button', [
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                IconButton(
                  icon: const Icon(Icons.thumb_up),
                  onPressed: () {},
                  color: Colors.blue,
                ),
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () {},
                  color: Colors.green,
                ),
                IconButton(
                  icon: const Icon(Icons.bookmark),
                  onPressed: () {},
                  color: Colors.orange,
                ),
              ],
            ),
          ]),
          
          const SizedBox(height: 16),
          const Text(
            '💡 Tips:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          _buildTip('• Flutter menyediakan ribuan Material Icons gratis'),
          _buildTip('• Gunakan Icons.name untuk akses icon'),
          _buildTip('• Ada variant: default, outlined, rounded, sharp'),
          _buildTip('• Lihat icon list lengkap di: fonts.google.com/icons'),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
            const SizedBox(height: 12),
            ...children,
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

class _IconDemo extends StatelessWidget {
  final IconData icon;
  final String label;

  const _IconDemo(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 32),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
