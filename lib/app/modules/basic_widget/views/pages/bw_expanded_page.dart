import 'package:flutter/material.dart';

class BwExpandedPage extends StatelessWidget {
  const BwExpandedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Single Expanded in Row', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                Expanded(
                  child: Container(height: 50, color: Colors.blue, child: const Center(child: Text('Expanded', style: TextStyle(color: Colors.white)))),
                ),
                Container(width: 50, height: 50, color: Colors.green),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Multiple Expanded (Equal)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(child: Container(height: 50, color: Colors.red, child: const Center(child: Text('1')))),
                Expanded(child: Container(height: 50, color: Colors.green, child: const Center(child: Text('2')))),
                Expanded(child: Container(height: 50, color: Colors.blue, child: const Center(child: Text('3')))),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Expanded with Flex', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(flex: 1, child: Container(height: 50, color: Colors.red, child: const Center(child: Text('flex: 1')))),
                Expanded(flex: 2, child: Container(height: 50, color: Colors.green, child: const Center(child: Text('flex: 2')))),
                Expanded(flex: 3, child: Container(height: 50, color: Colors.blue, child: const Center(child: Text('flex: 3')))),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Expanded in Column', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: Column(
                children: [
                  Container(height: 50, color: Colors.red, child: const Center(child: Text('Fixed'))),
                  Expanded(
                    child: Container(color: Colors.blue, child: const Center(child: Text('Expanded', style: TextStyle(color: Colors.white)))),
                  ),
                  Container(height: 50, color: Colors.green, child: const Center(child: Text('Fixed'))),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Expanded widget expands to fill available space in Row or Column. Use flex property to control proportions.',
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
