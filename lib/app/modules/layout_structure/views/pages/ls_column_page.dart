import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LsColumnPage extends StatelessWidget {
  const LsColumnPage({super.key});

  @ override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Examples'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Column Widget Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Column menyusun children secara vertikal (dari atas ke bawah).',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          _buildSection('Basic Column', [
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Container(height: 50, width: 100, color: Colors.red, child: const Center(child: Text('1', style: TextStyle(color: Colors.white)))),
                  const SizedBox(height: 8),
                  Container(height: 50, width: 100, color: Colors.green, child: const Center(child: Text('2', style: TextStyle(color: Colors.white)))),
                  const SizedBox(height: 8),
                  Container(height: 50, width: 100, color: Colors.blue, child: const Center(child: Text('3', style: TextStyle(color: Colors.white)))),
                ],
              ),
            ),
          ]),
          
          _buildSection('MainAxisAlignment', [
            const Text('MainAxisAlignment mengatur posisi children di sumbu vertikal:', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _buildAlignmentDemo(
                    'start',
                    MainAxisAlignment.start,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildAlignmentDemo(
                    'center',
                    MainAxisAlignment.center,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildAlignmentDemo(
                    'end',
                    MainAxisAlignment.end,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _buildAlignmentDemo(
                    'spaceBetween',
                    MainAxisAlignment.spaceBetween,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildAlignmentDemo(
                    'spaceAround',
                    MainAxisAlignment.spaceAround,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildAlignmentDemo(
                    'spaceEvenly',
                    MainAxisAlignment.spaceEvenly,
                  ),
                ),
              ],
            ),
          ]),
          
          _buildSection('CrossAxisAlignment', [
            const Text('CrossAxisAlignment mengatur posisi di sumbu horizontal:', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('CrossAxisAlignment.start'),
                  const SizedBox(height: 4),
                  Container(height: 40, width: 100, color: Colors.purple),
                  const SizedBox(height: 16),
                  const Text('CrossAxisAlignment.center'),
                  const SizedBox(height: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(height: 40, width: 100, color: Colors.purple),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text('CrossAxisAlignment.end'),
                  const SizedBox(height: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(height: 40, width: 100, color: Colors.purple),
                    ],
                  ),
                ],
              ),
            ),
          ]),
          
          const SizedBox(height: 16),
          const Text(
            '💡 Tips:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          _buildTip('• Column menyusun children secara vertikal'),
          _buildTip('• MainAxisAlignment = pengaturan vertikal (atas-bawah)'),
          _buildTip('• CrossAxisAlignment = pengaturan horizontal (kiri-kanan)'),
          _buildTip('• Gunakan SizedBox untuk spacing antar children'),
        ],
      ),
    );
  }

  Widget _buildAlignmentDemo(String name, MainAxisAlignment alignment) {
    return Container(
      height: 180,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        mainAxisAlignment: alignment,
        children: [
          Container(height: 30, width: 40, color: Colors.purple),
          Container(height: 30, width: 40, color: Colors.purple),
          Container(height: 30, width: 40, color: Colors.purple),
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple),
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
