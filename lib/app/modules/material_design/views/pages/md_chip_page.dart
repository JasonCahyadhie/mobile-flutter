import 'package:flutter/material.dart';

class MdChipPage extends StatefulWidget {
  const MdChipPage({Key? key}) : super(key: key);

  @override
  State<MdChipPage> createState() => _MdChipPageState();
}

class _MdChipPageState extends State<MdChipPage> {
  bool _isSelected = false;
  final Set<String> _selectedFilters = {};
  final List<String> _tags = ['Flutter', 'Dart', 'Mobile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chip Variants'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Action Chip',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              children: [
                ActionChip(
                  avatar: const Icon(Icons.add),
                  label: const Text('Add Tag'),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Action Chip Pressed')),
                    );
                  },
                ),
                ActionChip(
                  avatar: const Icon(Icons.share),
                  label: const Text('Share'),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Choice Chip',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ChoiceChip(
              label: const Text('Selected'),
              selected: _isSelected,
              onSelected: (bool selected) {
                setState(() {
                  _isSelected = selected;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Filter Chip',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              children: [
                FilterChip(
                  label: const Text('Flutter'),
                  selected: _selectedFilters.contains('Flutter'),
                  onSelected: (bool selected) {
                    setState(() {
                      if (selected) {
                        _selectedFilters.add('Flutter');
                      } else {
                        _selectedFilters.remove('Flutter');
                      }
                    });
                  },
                ),
                FilterChip(
                  label: const Text('Dart'),
                  selected: _selectedFilters.contains('Dart'),
                  onSelected: (bool selected) {
                    setState(() {
                      if (selected) {
                        _selectedFilters.add('Dart');
                      } else {
                        _selectedFilters.remove('Dart');
                      }
                    });
                  },
                ),
                FilterChip(
                  label: const Text('Mobile'),
                  selected: _selectedFilters.contains('Mobile'),
                  onSelected: (bool selected) {
                    setState(() {
                      if (selected) {
                        _selectedFilters.add('Mobile');
                      } else {
                        _selectedFilters.remove('Mobile');
                      }
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Input Chip',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              children: _tags.map((tag) {
                return InputChip(
                  label: Text(tag),
                  onDeleted: () {
                    setState(() {
                      _tags.remove(tag);
                    });
                  },
                  deleteIcon: const Icon(Icons.close, size: 18),
                );
              }).toList(),
            ),
            if (_selectedFilters.isNotEmpty) ...[
              const SizedBox(height: 20),
              Text(
                'Selected Filters: ${_selectedFilters.join(", ")}',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
