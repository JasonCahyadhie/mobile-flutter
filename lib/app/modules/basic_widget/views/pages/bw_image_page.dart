import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BwImagePage extends StatelessWidget {
  const BwImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Examples'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Image Widget Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Image widget untuk menampilkan gambar dari berbagai sumber (network, asset, file).',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          _buildSection('Network Image', [
            const Text('Gambar dari URL internet:', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 8),
            Image.network(
              'https://picsum.photos/300/200',
              height: 150,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return SizedBox(
                  height: 150,
                  child: Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 150,
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Icon(Icons.error, size: 48, color: Colors.red),
                  ),
                );
              },
            ),
          ]),
          
          _buildSection('Image Placeholder', [
            const Text('Placeholder saat gambar belum dimuat:', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 8),
            Container(
              height: 150,
              color: Colors.grey.shade300,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image, size: 48, color: Colors.grey),
                    SizedBox(height: 8),
                    Text('Image Placeholder'),
                  ],
                ),
              ),
            ),
          ]),
          
          _buildSection('Image Fit Modes', [
            const Text('BoxFit.cover - mengisi penuh, crop jika perlu:', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 8),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Image.network(
                'https://picsum.photos/400/300',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            const Text('BoxFit.contain - tampil full tanpa crop:', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 8),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.grey.shade100,
              ),
              child: Image.network(
                'https://picsum.photos/400/300',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 12),
            const Text('BoxFit.fill - stretch untuk mengisi:', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 8),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Image.network(
                'https://picsum.photos/400/300',
                fit: BoxFit.fill,
              ),
            ),
          ]),
          
          _buildSection('Circular Image', [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipOval(
                  child: Image.network(
                    'https://picsum.photos/100/100',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipOval(
                  child: Image.network(
                    'https://picsum.photos/101/101',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://picsum.photos/102/102',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ]),
         
          _buildSection('Image with Border', [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal, width: 4),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://picsum.photos/300/200',
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ]),
          
          _buildSection('Icon as Image', [
            const Text('Gunakan Icon untuk gambar vector sederhana:', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.person, size: 48, color: Colors.blue),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.camera_alt, size: 48, color: Colors.green),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.photo, size: 48, color: Colors.orange),
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
          _buildTip('• Image.network untuk gambar dari internet'),
          _buildTip('• Image.asset untuk gambar lokal di folder assets/'),
          _buildTip('• Gunakan loadingBuilder untuk menampilkan loading'),
          _buildTip('• errorBuilder untuk handle error loading gambar'),
          _buildTip('• ClipOval/ClipRRect untuk membuat gambar bulat/rounded'),
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal),
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
