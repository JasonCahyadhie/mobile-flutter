import 'package:flutter/material.dart';

class BwSizedBoxPage extends StatelessWidget {
  const BwSizedBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Fixed Size SizedBox', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            SizedBox(
              width: 200,
              height: 100,
              child: Container(color: Colors.blue, child: const Center(child: Text('200x100', style: TextStyle(color: Colors.white)))),
            ),
            const SizedBox(height: 20),
            const Text('SizedBox as Spacing', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: 100, height: 50, color: Colors.red),
                const SizedBox(height: 20),
                Container(width: 100, height: 50, color: Colors.green),
                const SizedBox(height: 20),
                Container(width: 100, height: 50, color: Colors.blue),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Horizontal Spacing', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                const SizedBox(width: 20),
                Container(width: 50, height: 50, color: Colors.green),
                const SizedBox(width: 20),
                Container(width: 50, height: 50, color: Colors.blue),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Expand to Fill Width', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Container(color: Colors.purple, child: const Center(child: Text('Full Width', style: TextStyle(color: Colors.white)))),
            ),
            const SizedBox(height: 20),
            const Text('Square SizedBox', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            SizedBox.square(
              dimension: 100,
              child: Container(color: Colors.orange, child: const Center(child: Text('100x100', style: TextStyle(color: Colors.white)))),
            ),
          ],
        ),
      ),
    );
  }
}
