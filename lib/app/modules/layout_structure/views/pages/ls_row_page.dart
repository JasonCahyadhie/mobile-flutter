import 'package:flutter/material.dart';

class LsRowPage extends StatelessWidget {
  const LsRowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Basic Row', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(width: 50, height: 50, color: Colors.red, child: const Center(child: Text('1'))),
                  const SizedBox(width: 10),
                  Container(width: 50, height: 50, color: Colors.green, child: const Center(child: Text('2'))),
                  const SizedBox(width: 10),
                  Container(width: 50, height: 50, color: Colors.blue, child: const Center(child: Text('3'))),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('MainAxisAlignment', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Text('Start'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(width: 50, height: 50, color: Colors.red),
                      Container(width: 50, height: 50, color: Colors.green),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('Center'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 50, height: 50, color: Colors.red),
                      Container(width: 50, height: 50, color: Colors.green),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('SpaceBetween'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(width: 50, height: 50, color: Colors.red),
                      Container(width: 50, height: 50, color: Colors.green),
                      Container(width: 50, height: 50, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
