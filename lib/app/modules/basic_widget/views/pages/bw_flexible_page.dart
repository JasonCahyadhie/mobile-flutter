import 'package:flutter/material.dart';

class BwFlexiblePage extends StatelessWidget {
  const BwFlexiblePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Flexible vs Expanded', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text('Flexible allows child to be smaller than available space, while Expanded forces child to fill available space.'),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Flexible (fit: FlexFit.loose)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                Flexible(
                  child: Container(height: 50, color: Colors.blue, child: const Center(child: Text('Flexible'))),
                ),
                Container(width: 50, height: 50, color: Colors.green),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Flexible with Flex', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Flexible(flex: 1, child: Container(height: 50, color: Colors.red, child: const Center(child: Text('1')))),
                Flexible(flex: 2, child: Container(height: 50, color: Colors.green, child: const Center(child: Text('2')))),
                Flexible(flex: 3, child: Container(height: 50, color: Colors.blue, child: const Center(child: Text('3')))),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Flexible (fit: FlexFit.tight)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(height: 50, color: Colors.purple, child: const Center(child: Text('Tight Fit'))),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Mixed: Flexible + Fixed', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(width: 80, height: 50, color: Colors.orange, child: const Center(child: Text('Fixed'))),
                Flexible(
                  flex: 2,
                  child: Container(height: 50, color: Colors.cyan, child: const Center(child: Text('Flexible'))),
                ),
                Container(width: 80, height: 50, color: Colors.pink, child: const Center(child: Text('Fixed'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
