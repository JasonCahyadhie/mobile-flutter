import 'package:flutter/material.dart';

class LsAlignPage extends StatelessWidget {
  const LsAlignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Align Widget', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: Container(
                color: Colors.grey.shade200,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(width: 50, height: 50, color: Colors.red, child: const Center(child: Text('TL'))),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: Container(
                color: Colors.grey.shade200,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(width: 50, height: 50, color: Colors.green, child: const Center(child: Text('C'))),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: Container(
                color: Colors.grey.shade200,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(width: 50, height: 50, color: Colors.blue, child: const Center(child: Text('BR'))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
