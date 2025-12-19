import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IfCheckboxPage extends StatefulWidget {
  const IfCheckboxPage({super.key});

  @override
  State<IfCheckboxPage> createState() => _IfCheckboxPageState();
}

class _IfCheckboxPageState extends State<IfCheckboxPage> {
  bool _isChecked1 = false;
  bool _isChecked2 = true;
  bool? _triState = null;
  
  final Map<String, bool> _hobbies = {
    'Reading': false,
    'Sports': false,
    'Music': true,
    'Cooking': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Examples'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Checkbox Widget Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Checkbox untuk pilihan yang bisa di-check/uncheck.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          _buildSection('Basic Checkbox', [
            Row(
              children: [
                Checkbox(
                  value: _isChecked1,
                  onChanged: (value) => setState(() => _isChecked1 = value ?? false),
                ),
                const Text('Unchecked by default'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: _isChecked2,
                  onChanged: (value) => setState(() => _isChecked2 = value ?? false),
                ),
                const Text('Checked by default'),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: null, // Disabled
                ),
                const Text('Disabled Checkbox'),
              ],
            ),
          ]),
          
          _buildSection('CheckboxListTile', [
            CheckboxListTile(
              title: const Text('Accept Terms & Conditions'),
              subtitle: const Text('You must accept to continue'),
              value: _isChecked1,
              onChanged: (value) => setState(() => _isChecked1 = value ?? false),
              secondary: const Icon(Icons.description),
            ),
            const Divider(),
            CheckboxListTile(
              title: const Text('Subscribe to Newsletter'),
              subtitle: const Text('Get weekly updates'),
              value: _isChecked2,
              onChanged: (value) => setState(() => _isChecked2 = value ?? false),
              secondary: const Icon(Icons.email),
            ),
          ]),
          
          _buildSection('Multiple Checkboxes', [
            const Text('Select your hobbies:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ..._hobbies.keys.map((hobby) => CheckboxListTile(
              title: Text(hobby),
              value: _hobbies[hobby],
              onChanged: (value) {
                setState(() => _hobbies[hobby] = value ?? false);
              },
              controlAffinity: ListTileControlAffinity.leading,
            )),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Selected: ${_hobbies.entries.where((e) => e.value).map((e) => e.key).join(", ")}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          
          _buildSection('Tri-State Checkbox', [
            const Text('Checkbox dengan 3 state: checked, unchecked, indeterminate', style: TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 8),
            Row(
              children: [
                Checkbox(
                  value: _triState,
                  tristate: true,
                  onChanged: (value) {
                    setState(() {
                      if (_triState == null) {
                        _triState = false;
                      } else if (_triState == false) {
                        _triState = true;
                      } else {
                        _triState = null;
                      }
                    });
                  },
                ),
                Text('State: ${_triState == null ? "Indeterminate" : _triState! ? "Checked" : "Unchecked"}'),
              ],
            ),
          ]),
          
          _buildSection('Custom Colors', [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Checkbox(
                  value: true,
                  onChanged: (v) {},
                  activeColor: Colors.red,
                ),
                Checkbox(
                  value: true,
                  onChanged: (v) {},
                  activeColor: Colors.blue,
                ),
                Checkbox(
                  value: true,
                  onChanged: (v) {},
                  activeColor: Colors.purple,
                ),
                Checkbox(
                  value: true,
                  onChanged: (v) {},
                  activeColor: Colors.orange,
                ),
              ],
            ),
          ]),
          
          const SizedBox(height: 16),
          const Text(
            '💡 Tips:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          _buildTip('• Checkbox untuk single selection on/off'),
          _buildTip('• CheckboxListTile untuk checkbox dengan label'),
          _buildTip('• tristate: true untuk 3-state checkbox'),
          _buildTip('• onChanged: null untuk disable checkbox'),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 12),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildTip(String tip) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text(tip, style: const TextStyle(fontSize: 14)),
    );
  }
}
