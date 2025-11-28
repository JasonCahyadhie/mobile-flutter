import 'package:flutter/material.dart';

class BwPlaceholderPage extends StatelessWidget {
  const BwPlaceholderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Basic Placeholder', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const SizedBox(
              width: 200,
              height: 100,
              child: Placeholder(),
            ),
            const SizedBox(height: 20),
            const Text('Custom Color', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const SizedBox(
              width: 200,
              height: 100,
              child: Placeholder(color: Colors.red),
            ),
            const SizedBox(height: 20),
            const Text('Different Stroke Width', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const SizedBox(
              width: 200,
              height: 100,
              child: Placeholder(strokeWidth: 4),
            ),
            const SizedBox(height: 20),
            const Text('In Layout', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: const [
                Expanded(child: Placeholder(color: Colors.blue)),
                SizedBox(width: 10),
                Expanded(child: Placeholder(color: Colors.green)),
                SizedBox(width: 10),
                Expanded(child: Placeholder(color: Colors.orange)),
              ],
            ),
            const SizedBox(height: 20),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Placeholder is useful during development to mark areas that need content.',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
