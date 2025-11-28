import 'package:flutter/material.dart';

class MdTimePickerPage extends StatefulWidget {
  const MdTimePickerPage({Key? key}) : super(key: key);

  @override
  State<MdTimePickerPage> createState() => _MdTimePickerPageState();
}

class _MdTimePickerPageState extends State<MdTimePickerPage> {
  TimeOfDay? _selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimePicker'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Time Picker',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => _selectTime(context),
              icon: const Icon(Icons.access_time),
              label: const Text('Select Time'),
            ),
            const SizedBox(height: 20),
            if (_selectedTime != null)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Selected Time:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(Icons.access_time, size: 48, color: Colors.blue),
                          const SizedBox(width: 20),
                          Text(
                            _selectedTime!.format(context),
                            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Hour: ${_selectedTime!.hour}',
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Minute: ${_selectedTime!.minute}',
                        style: const TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Period: ${_selectedTime!.period.name.toUpperCase()}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            const SizedBox(height: 20),
            const Card(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Info:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '• TimePicker supports both 12-hour and 24-hour formats',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '• Format depends on device locale settings',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '• You can customize the appearance and behavior',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
