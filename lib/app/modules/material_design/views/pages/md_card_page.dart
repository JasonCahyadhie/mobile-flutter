import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MdCardPage extends StatelessWidget {
  const MdCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Examples'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Card Widget Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Card adalah widget Material Design untuk menampilkan informasi dalam bentuk kartu dengan shadow/elevation.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          const Text(
            'Basic Card',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: const Text('Ini adalah Card sederhana dengan default elevation'),
            ),
          ),
          const SizedBox(height: 24),
          
          const Text(
            'Card with Elevation',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: const Text('Card dengan elevation 0 (flat)'),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: const Text('Card dengan elevation 4'),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: const Text('Card dengan elevation 8'),
            ),
          ),
          const SizedBox(height: 24),
          
          const Text(
            'Colored Card',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            color: Colors.blue.shade50,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: const Text('Card dengan warna background biru'),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            color: Colors.green.shade50,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: const Text('Card dengan warna background hijau'),
            ),
          ),
          const SizedBox(height: 24),
          
          const Text(
            'Card with Image',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  color: Colors.teal.shade300,
                  child: const Center(
                    child: Icon(Icons.image, size: 64, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Card Title',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Card dengan gambar dan konten. Biasanya digunakan untuk menampilkan artikel, produk, atau konten media.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          
          const Text(
            'Interactive Card',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Card clicked!')),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: const [
                    Icon(Icons.touch_app, color: Colors.teal),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text('Tap this card!'),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 16),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          
          const Text(
            'Card with Custom Shape',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: const Text('Card dengan border radius 20'),
            ),
          ),
          const SizedBox(height: 8),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(color: Colors.teal, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: const Text('Card dengan border warna'),
            ),
          ),
          const SizedBox(height: 24),
          
          const Text(
            '💡 Tips:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          _buildTip('• Gunakan Card untuk mengelompokkan informasi'),
          _buildTip('• elevation mengontrol shadow/bayangan Card'),
          _buildTip('• Wrap dengan InkWell untuk membuat Card clickable'),
          _buildTip('• clipBehavior: Clip.antiAlias untuk image yang rapi'),
        ],
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
