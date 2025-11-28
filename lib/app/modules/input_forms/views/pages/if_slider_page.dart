import 'package:flutter/material.dart';

class IfSliderPage extends StatefulWidget {
  const IfSliderPage({Key? key}) : super(key: key);

  @override
  State<IfSliderPage> createState() => _IfSliderPageState();
}

class _IfSliderPageState extends State<IfSliderPage> {
  double _value = 50;
  RangeValues _rangeValues = const RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Basic Slider', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Slider(
              value: _value,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            Text('Value: ${_value.toInt()}', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 30),
            const Text('Slider with Divisions', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Slider(
              value: _value,
              min: 0,
              max: 100,
              divisions: 10,
              label: _value.toInt().toString(),
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            const SizedBox(height: 30),
            const Text('Range Slider', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            RangeSlider(
              values: _rangeValues,
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels(
                _rangeValues.start.toInt().toString(),
                _rangeValues.end.toInt().toString(),
              ),
              onChanged: (values) {
                setState(() {
                  _rangeValues = values;
                });
              },
            ),
            Text('Range: ${_rangeValues.start.toInt()} - ${_rangeValues.end.toInt()}', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
