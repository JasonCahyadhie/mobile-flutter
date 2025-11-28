import 'package:flutter/material.dart';

class BwAssetImagePage extends StatelessWidget {
  const BwAssetImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asset Image'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Card(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Note:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'To use asset images, you need to:',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '1. Add images to assets/ folder',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '2. Declare them in pubspec.yaml',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '3. Run flutter pub get',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Example Code:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade200,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Image.asset(',
                    style: TextStyle(fontFamily: 'monospace'),
                  ),
                  Text(
                    '  \'assets/images/logo.png\',',
                    style: TextStyle(fontFamily: 'monospace'),
                  ),
                  Text(
                    '  width: 200,',
                    style: TextStyle(fontFamily: 'monospace'),
                  ),
                  Text(
                    '  height: 200,',
                    style: TextStyle(fontFamily: 'monospace'),
                  ),
                  Text(
                    ')',
                    style: TextStyle(fontFamily: 'monospace'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'pubspec.yaml Configuration:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.grey.shade200,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'flutter:',
                    style: TextStyle(fontFamily: 'monospace'),
                  ),
                  Text(
                    '  assets:',
                    style: TextStyle(fontFamily: 'monospace'),
                  ),
                  Text(
                    '    - assets/images/',
                    style: TextStyle(fontFamily: 'monospace'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Placeholder Example:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.image, size: 64, color: Colors.grey),
                  SizedBox(height: 10),
                  Text('Asset Image Here'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
