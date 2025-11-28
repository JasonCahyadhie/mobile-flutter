import 'package:flutter/material.dart';

class BwProgressIndicatorPage extends StatefulWidget {
  const BwProgressIndicatorPage({Key? key}) : super(key: key);

  @override
  State<BwProgressIndicatorPage> createState() => _BwProgressIndicatorPageState();
}

class _BwProgressIndicatorPageState extends State<BwProgressIndicatorPage> {
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Circular Progress', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Center(child: CircularProgressIndicator()),
            const SizedBox(height: 30),
            const Text('Linear Progress', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const LinearProgressIndicator(),
            const SizedBox(height: 30),
            const Text('Determinate Progress', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            CircularProgressIndicator(value: _progress),
            const SizedBox(height: 20),
            LinearProgressIndicator(value: _progress),
            const SizedBox(height: 10),
            Center(child: Text('${(_progress * 100).toInt()}%', style: const TextStyle(fontSize: 24))),
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
            const SizedBox(height: 30),
            const Text('Custom Colors', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: const [
                CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.red)),
                CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.green)),
                CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.orange)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
