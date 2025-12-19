import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LsRowPage extends StatelessWidget {
  const LsRowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Examples'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Row Widget Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Row menyusun children secara horizontal (dari kiri ke kanan).',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          _buildSection('Basic Row', [
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade200,
              child: Row(
                children: [
                  Container(height: 50, width: 80, color: Colors.red, child: const Center(child: Text('1', style: TextStyle(color: Colors.white)))),
                  const SizedBox(width: 8),
                  Container(height: 50, width: 80, color: Colors.green, child: const Center(child: Text('2', style: TextStyle(color: Colors.white)))),
                  const SizedBox(width: 8),
                  Container(height: 50, width: 80, color: Colors.blue, child: const Center(child: Text('3', style: TextStyle(color: Colors.white)))),
                ],
              ),
            ),
          ]),
          
          _buildSection('MainAxisAlignment', [
            const Text('MainAxisAlignment mengatur posisi di sumbu horizontal:', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 12),
            _buildRowAlignmentDemo('start', MainAxisAlignment.start),
            const SizedBox(height: 8),
            _buildRowAlignmentDemo('center', MainAxisAlignment.center),
            const SizedBox(height: 8),
            _buildRowAlignmentDemo('end', MainAxisAlignment.end),
            const SizedBox(height: 8),
            _buildRowAlignmentDemo('spaceBetween', MainAxisAlignment.spaceBetween),
            const SizedBox(height: 8),
            _buildRowAlignmentDemo('spaceAround', MainAxisAlignment.spaceAround),
            const SizedBox(height: 8),
            _buildRowAlignmentDemo('spaceEvenly', MainAxisAlignment.spaceEvenly),
          ]),
          
          _buildSection('CrossAxisAlignment', [
            const Text('CrossAxisAlignment mengatur posisi di sumbu vertikal:', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 12),
            Container(
              height: 150,
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade200,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 60, height: 50, color: Colors.deepOrange),
                  const SizedBox(width: 8),
                  Container(width: 60, height: 80, color: Colors.deepOrange),
                  const SizedBox(width: 8),
                  Container(width: 60, height: 100, color: Colors.deepOrange),
                ],
              ),
            ),
          ]),
          
          _buildSection('Row with Expanded', [
            const Text('Expanded membuat child mengisi space yang tersisa:', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade200,
              child: Row(
                children: [
                  Container(width: 60, height: 50, color: Colors.red, child: const Center(child: Text('60'))),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(height: 50, color: Colors.green, child: const Center(child: Text('Expanded'))),
                  ),
                  const SizedBox(width: 8),
                  Container(width: 60, height: 50, color: Colors.blue, child: const Center(child: Text('60'))),
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
          _buildTip('• Row menyusun children secara horizontal'),
          _buildTip('• MainAxisAlignment = pengaturan horizontal (kiri-kanan)'),
          _buildTip('• CrossAxisAlignment = pengaturan vertikal (atas-bawah)'),
          _buildTip('• Gunakan Expanded untuk child yang flexible'),
        ],
      ),
    );
  }

  Widget _buildRowAlignmentDemo(String name, MainAxisAlignment alignment) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: alignment,
            children: [
              Container(height: 40, width: 50, color: Colors.deepOrange),
              Container(height: 40, width: 50, color: Colors.deepOrange),
              Container(height: 40, width: 50, color: Colors.deepOrange),
            ],
          ),
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepOrange),
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
