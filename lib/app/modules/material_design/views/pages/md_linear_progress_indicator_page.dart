import 'package:flutter/material.dart';

class MdLinearProgressIndicatorPage extends StatefulWidget {
  const MdLinearProgressIndicatorPage({Key? key}) : super(key: key);

  @override
  State<MdLinearProgressIndicatorPage> createState() => _MdLinearProgressIndicatorPageState();
}

class _MdLinearProgressIndicatorPageState extends State<MdLinearProgressIndicatorPage> {
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LinearProgressIndicator'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Indeterminate Progress',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const LinearProgressIndicator(),
            const SizedBox(height: 40),
            const Text(
              'Determinate Progress',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            LinearProgressIndicator(
              value: _progress,
              backgroundColor: Colors.grey.shade300,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                '${(_progress * 100).toInt()}%',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _progress = (_progress + 0.1).clamp(0.0, 1.0);
                    });
                  },
                  child: const Text('Increase'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _progress = 0.0;
                    });
                  },
                  child: const Text('Reset'),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              'Custom Colors',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            ),
            const SizedBox(height: 15),
            const LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ),
            const SizedBox(height: 15),
            const LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
            const SizedBox(height: 40),
            const Text(
              'Custom Height',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 10,
              child: LinearProgressIndicator(
                value: 0.7,
                backgroundColor: Colors.grey.shade300,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 15,
              child: LinearProgressIndicator(
                value: 0.5,
                backgroundColor: Colors.grey.shade300,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 20,
              child: LinearProgressIndicator(
                value: 0.3,
                backgroundColor: Colors.grey.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
