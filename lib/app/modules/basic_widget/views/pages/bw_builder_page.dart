import 'package:flutter/material.dart';

class BwBuilderPage extends StatelessWidget {
  const BwBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Basic Builder', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Builder(
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.blue.shade100,
                  child: const Text('Built with Builder widget'),
                );
              },
            ),
            const SizedBox(height: 20),
            const Text('Builder for SnackBar', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Builder context used!')),
                    );
                  },
                  child: const Text('Show SnackBar'),
                );
              },
            ),
            const SizedBox(height: 20),
            const Text('LayoutBuilder', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.green.shade100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Max Width: ${constraints.maxWidth.toStringAsFixed(2)}'),
                      Text('Max Height: ${constraints.maxHeight.toStringAsFixed(2)}'),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            const Text('Responsive with LayoutBuilder', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth > 600) {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.purple.shade100,
                    child: const Text('Wide Layout (> 600px)', style: TextStyle(fontSize: 18)),
                  );
                } else {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.orange.shade100,
                    child: const Text('Narrow Layout (≤ 600px)', style: TextStyle(fontSize: 18)),
                  );
                }
              },
            ),
            const SizedBox(height: 20),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Builder widget provides a new BuildContext for its child. Useful for accessing context-dependent features like Scaffold.',
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
