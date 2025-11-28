import 'package:flutter/material.dart';

class SlSingleChildScrollViewPage extends StatelessWidget {
  const SlSingleChildScrollViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(20, (index) {
            return Card(
              margin: const EdgeInsets.only(bottom: 10),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Item ${index + 1}', style: const TextStyle(fontSize: 18)),
              ),
            );
          }),
        ),
      ),
    );
  }
}
