import 'package:flutter/material.dart';

class LsPaddingPage extends StatelessWidget {
  const LsPaddingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('All Sides Padding', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(color: Colors.blue, height: 50, child: const Center(child: Text('Padding: 20', style: TextStyle(color: Colors.white)))),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Symmetric Padding', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Container(color: Colors.green, height: 50, child: const Center(child: Text('H:30, V:10', style: TextStyle(color: Colors.white)))),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Only Padding', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              color: Colors.grey.shade200,
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 20),
                child: Container(color: Colors.orange, height: 50, child: const Center(child: Text('Left:40, Top:20', style: TextStyle(color: Colors.white)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
