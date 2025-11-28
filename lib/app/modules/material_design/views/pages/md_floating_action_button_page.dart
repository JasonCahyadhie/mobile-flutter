import 'package:flutter/material.dart';

class MdFloatingActionButtonPage extends StatefulWidget {
  const MdFloatingActionButtonPage({Key? key}) : super(key: key);

  @override
  State<MdFloatingActionButtonPage> createState() => _MdFloatingActionButtonPageState();
}

class _MdFloatingActionButtonPageState extends State<MdFloatingActionButtonPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Counter: ',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Text(
              'FAB Variants:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildFABExample(
              'Regular FAB',
              FloatingActionButton(
                onPressed: _incrementCounter,
                child: const Icon(Icons.add),
              ),
            ),
            _buildFABExample(
              'Extended FAB',
              FloatingActionButton.extended(
                onPressed: _incrementCounter,
                icon: const Icon(Icons.add),
                label: const Text('Add Item'),
              ),
            ),
            _buildFABExample(
              'Small FAB',
              FloatingActionButton.small(
                onPressed: _incrementCounter,
                child: const Icon(Icons.add),
              ),
            ),
            _buildFABExample(
              'Large FAB',
              FloatingActionButton.large(
                onPressed: _incrementCounter,
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildFABExample(String title, Widget fab) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 8),
          fab,
        ],
      ),
    );
  }
}
