import 'package:flutter/material.dart';

class BwSpacerPage extends StatelessWidget {
  const BwSpacerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spacer'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Spacer in Row', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              height: 60,
              color: Colors.grey.shade200,
              child: Row(
                children: [
                  Container(width: 50, color: Colors.red),
                  const Spacer(),
                  Container(width: 50, color: Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Multiple Spacers', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              height: 60,
              color: Colors.grey.shade200,
              child: Row(
                children: [
                  Container(width: 50, color: Colors.red),
                  const Spacer(),
                  Container(width: 50, color: Colors.green),
                  const Spacer(),
                  Container(width: 50, color: Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Spacer with Flex', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              height: 60,
              color: Colors.grey.shade200,
              child: Row(
                children: [
                  Container(width: 50, color: Colors.red),
                  const Spacer(flex: 1),
                  Container(width: 50, color: Colors.green),
                  const Spacer(flex: 2),
                  Container(width: 50, color: Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Spacer in Column', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              height: 200,
              color: Colors.grey.shade200,
              child: Column(
                children: [
                  Container(height: 50, width: double.infinity, color: Colors.red),
                  const Spacer(),
                  Container(height: 50, width: double.infinity, color: Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Spacer creates flexible space that expands to fill available space in Row or Column.',
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
