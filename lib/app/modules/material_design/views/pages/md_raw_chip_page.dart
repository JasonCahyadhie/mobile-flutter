import 'package:flutter/material.dart';

class MdRawChipPage extends StatefulWidget {
  const MdRawChipPage({Key? key}) : super(key: key);

  @override
  State<MdRawChipPage> createState() => _MdRawChipPageState();
}

class _MdRawChipPageState extends State<MdRawChipPage> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RawChip'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'RawChip allows full customization of chip appearance and behavior.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Basic RawChip',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RawChip(
              label: const Text('Basic Chip'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('RawChip Pressed')),
                );
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Selectable RawChip',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RawChip(
              label: const Text('Selectable'),
              selected: _isSelected,
              onSelected: (bool selected) {
                setState(() {
                  _isSelected = selected;
                });
              },
              selectedColor: Colors.blue.shade200,
            ),
            const SizedBox(height: 20),
            const Text(
              'RawChip with Avatar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RawChip(
              avatar: const CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('A', style: TextStyle(color: Colors.white)),
              ),
              label: const Text('Avatar Chip'),
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            const Text(
              'Deletable RawChip',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RawChip(
              label: const Text('Deletable'),
              onDeleted: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Chip Deleted')),
                );
              },
              deleteIcon: const Icon(Icons.cancel, size: 18),
            ),
            const SizedBox(height: 20),
            const Text(
              'Custom Styled RawChip',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            RawChip(
              label: const Text('Custom Style'),
              backgroundColor: Colors.purple.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.purple, width: 2),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              labelStyle: const TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
