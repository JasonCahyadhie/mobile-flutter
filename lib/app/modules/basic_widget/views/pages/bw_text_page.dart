import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BwTextPage extends StatelessWidget {
  const BwTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget Examples'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Text Widget Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Text adalah widget untuk menampilkan teks dengan berbagai styling dan formatting.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          _buildSection('Font Sizes', [
            const Text('Small text (12px)', style: TextStyle(fontSize: 12)),
            const Text('Normal text (16px)', style: TextStyle(fontSize: 16)),
            const Text('Large text (20px)', style: TextStyle(fontSize: 20)),
            const Text('Extra Large (28px)', style: TextStyle(fontSize: 28)),
          ]),
          
          _buildSection('Font Weights', [
            const Text('Light', style: TextStyle(fontWeight: FontWeight.w300)),
            const Text('Normal', style: TextStyle(fontWeight: FontWeight.normal)),
            const Text('Medium', style: TextStyle(fontWeight: FontWeight.w500)),
            const Text('Bold', style: TextStyle(fontWeight: FontWeight.bold)),
            const Text('Extra Bold', style: TextStyle(fontWeight: FontWeight.w900)),
          ]),
          
          _buildSection('Font Styles', [
            const Text('Normal text'),
            const Text('Italic text', style: TextStyle(fontStyle: FontStyle.italic)),
            const Text('UPPERCASE', style: TextStyle(letterSpacing: 2.0)),
            const Text('Underlined', style: TextStyle(decoration: TextDecoration.underline)),
            const Text('Line Through', style: TextStyle(decoration: TextDecoration.lineThrough)),
          ]),
          
          _buildSection('Colors', [
            const Text('Black text', style: TextStyle(color: Colors.black)),
            const Text('Blue text', style: TextStyle(color: Colors.blue)),
            const Text('Red text', style: TextStyle(color: Colors.red)),
            const Text('Green text', style: TextStyle(color: Colors.green)),
            Text('Custom hex color', style: TextStyle(color: Color(0xFF9C27B0))),
          ]),
          
          _buildSection('Text Alignment', [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade100,
              child: const Text('Left aligned (default)', textAlign: TextAlign.left),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade100,
              child: const Text('Center aligned', textAlign: TextAlign.center),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade100,
              child: const Text('Right aligned', textAlign: TextAlign.right),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade100,
              child: const Text('Justified text. This is a longer text to demonstrate text justification. It will distribute spaces evenly.', 
                textAlign: TextAlign.justify),
            ),
          ]),
          
          _buildSection('Text Overflow', [
            Container(
              width: 200,
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade100,
              child: const Text(
                'This is a very long text that will overflow the container',
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 200,
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade100,
              child: const Text(
                'This is a very long text that will be clipped',
                overflow: TextOverflow.clip,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 200,
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade100,
              child: const Text(
                'This is a very long text that will fade at the end',
                overflow: TextOverflow.fade,
                softWrap: false,
              ),
            ),
          ]),
          
          _buildSection('Rich Text', [
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(text: 'You can mix '),
                  TextSpan(
                    text: 'different',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  TextSpan(text: ' '),
                  TextSpan(
                    text: 'styles',
                    style: TextStyle(fontStyle: FontStyle.italic, color: Colors.red),
                  ),
                  TextSpan(text: ' in one text!'),
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
          _buildTip('• Gunakan const untuk Text yang tidak berubah (performance)'),
          _buildTip('• TextStyle mengatur semua styling teks'),
          _buildTip('• overflow menangani teks yang terlalu panjang'),
          _buildTip('• RichText untuk teks dengan multiple styles'),
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange),
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
