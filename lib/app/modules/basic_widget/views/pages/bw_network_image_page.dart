import 'package:flutter/material.dart';

class BwNetworkImagePage extends StatelessWidget {
  const BwNetworkImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network Image'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Basic Network Image',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Image.network(
              'https://picsum.photos/400/300',
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            const Text(
              'With Error Handling',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Image.network(
              'https://invalid-url.com/image.jpg',
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error, size: 48, color: Colors.red),
                        SizedBox(height: 10),
                        Text('Failed to load image'),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            const Text(
              'Sized Network Image',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Image.network(
              'https://picsum.photos/200/200',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            const Text(
              'Different Fit Modes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildFitExample('Cover', BoxFit.cover),
                _buildFitExample('Contain', BoxFit.contain),
                _buildFitExample('Fill', BoxFit.fill),
                _buildFitExample('FitWidth', BoxFit.fitWidth),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFitExample(String label, BoxFit fit) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Image.network(
            'https://picsum.photos/300/200',
            fit: fit,
          ),
        ),
      ],
    );
  }
}
