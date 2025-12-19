import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BwContainerPage extends StatelessWidget {
  const BwContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Examples'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Container Widget Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Container adalah widget serbaguna untuk styling, positioning, dan sizing child widgets.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          _buildSection('Basic Container with Color', [
            Container(
              width: 150,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text('Blue Container', style: TextStyle(color: Colors.white)),
              ),
            ),
          ]),
          
          _buildSection('Container with Border', [
            Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.red, width: 3),
              ),
              child: const Center(child: Text('With Border')),
            ),
          ]),
          
          _buildSection('Container with Border Radius', [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text('8px', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text('20px', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Center(
                    child: Text('40px', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ]),
          
          _buildSection('Container with Gradient', [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Linear Gradient',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.orange, Colors.red],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Radial Gradient',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
          
          _buildSection('Container with Shadow', [
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Center(child: Text('Container with Shadow')),
            ),
          ]),
          
          _buildSection('Container with Padding', [
            Container(
              color: Colors.blue.shade100,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Padding 20px all sides',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
          
          _buildSection('Container with Margin', [
            Container(
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(16),
                    color: Colors.green,
                    child: const Text('Margin 8px', style: TextStyle(color: Colors.white)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(16),
                    color: Colors.blue,
                    child: const Text('Margin 16px', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ]),
          
          _buildSection('Circular Container', [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.favorite, color: Colors.white, size: 40),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.purple, Colors.pink],
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.star, color: Colors.white, size: 40),
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
          _buildTip('• Container adalah widget paling versatile di Flutter'),
          _buildTip('• Gunakan decoration untuk styling advanced (gradient, shadow, dll)'),
          _buildTip('• Tidak bisa gunakan color dan decoration bersamaan'),
          _buildTip('• BoxDecoration memberikan kontrol penuh atas styling'),
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
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
