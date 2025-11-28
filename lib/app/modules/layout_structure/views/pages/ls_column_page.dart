import 'package:flutter/material.dart';

class LsColumnPage extends StatelessWidget {
  const LsColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Basic Column', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(height: 50, color: Colors.red, child: const Center(child: Text('Item 1'))),
                  const SizedBox(height: 10),
                  Container(height: 50, color: Colors.green, child: const Center(child: Text('Item 2'))),
                  const SizedBox(height: 10),
                  Container(height: 50, color: Colors.blue, child: const Center(child: Text('Item 3'))),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('MainAxisAlignment', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    color: Colors.grey.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(width: 50, height: 50, color: Colors.red),
                        Container(width: 50, height: 50, color: Colors.green),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 200,
                    color: Colors.grey.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 50, height: 50, color: Colors.red),
                        Container(width: 50, height: 50, color: Colors.green),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 200,
                    color: Colors.grey.shade200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(width: 50, height: 50, color: Colors.red),
                        Container(width: 50, height: 50, color: Colors.green),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('CrossAxisAlignment', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              color: Colors.grey.shade200,
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 100, height: 30, color: Colors.red, child: const Center(child: Text('Start'))),
                  Container(width: 100, height: 30, color: Colors.green, child: const Center(child: Text('Start'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
