import 'package:flutter/material.dart';

class LsSafeAreaPage extends StatelessWidget {
  const LsSafeAreaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeArea'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red.shade100,
              child: const Center(
                child: Text('Without SafeArea\n(May be hidden by notch/status bar)', textAlign: TextAlign.center),
              ),
            ),
          ),
          Expanded(
            child: SafeArea(
              child: Container(
                color: Colors.green.shade100,
                child: const Center(
                  child: Text('With SafeArea\n(Always visible)', textAlign: TextAlign.center),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
