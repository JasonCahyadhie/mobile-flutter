import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IfSwitchPage extends StatefulWidget {
  const IfSwitchPage({super.key});

  @override
  State<IfSwitchPage> createState() => _IfSwitchPageState();
}

class _IfSwitchPageState extends State<IfSwitchPage> {
  bool _switch1 = false;
  bool _switch2 = true;
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  bool _autoSaveEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Examples'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Switch Widget Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Switch untuk toggle on/off dengan animasi.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          _buildSection('Basic Switch', [
            Row(
              children: [
                Switch(
                  value: _switch1,
                  onChanged: (value) => setState(() => _switch1 = value),
                ),
                const Text('Off by default'),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Switch(
                  value: _switch2,
                  onChanged: (value) => setState(() => _switch2 = value),
                ),
                const Text('On by default'),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Switch(
                  value: false,
                  onChanged: null, // Disabled
                ),
                const Text('Disabled Switch'),
              ],
            ),
          ]),
          
          _buildSection('SwitchListTile', [
            SwitchListTile(
              title: const Text('Enable Notifications'),
              subtitle: const Text('Receive push notifications'),
              value: _notificationsEnabled,
              onChanged: (value) => setState(() => _notificationsEnabled = value),
              secondary: Icon(
                _notificationsEnabled ? Icons.notifications_active : Icons.notifications_off,
                color: _notificationsEnabled ? Colors.blue : Colors.grey,
              ),
            ),
            const Divider(),
            SwitchListTile(
              title: const Text('Dark Mode'),
              subtitle: const Text('Use dark theme'),
              value: _darkModeEnabled,
              onChanged: (value) => setState(() => _darkModeEnabled = value),
              secondary: Icon(
                _darkModeEnabled ? Icons.dark_mode : Icons.light_mode,
                color: _darkModeEnabled ? Colors.amber : Colors.grey,
              ),
            ),
            const Divider(),
            SwitchListTile(
              title: const Text('Auto-Save'),
              subtitle: const Text('Automatically save changes'),
              value: _autoSaveEnabled,
              onChanged: (value) => setState(() => _autoSaveEnabled = value),
              secondary: const Icon(Icons.save),
            ),
          ]),
          
          _buildSection('Custom Colors', [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Switch(
                  value: true,
                  onChanged: (v) {},
                  activeColor: Colors.red,
                ),
                Switch(
                  value: true,
                  onChanged: (v) {},
                  activeColor: Colors.green,
                ),
                Switch(
                  value: true,
                  onChanged: (v) {},
                  activeColor: Colors.purple,
                ),
                Switch(
                  value: true,
                  onChanged: (v) {},
                  activeColor: Colors.orange,
                ),
              ],
            ),
          ]),
          
          _buildSection('Settings Example', [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  _buildSettingTile(
                    icon: Icons.wifi,
                    title: 'WiFi',
                    value: _switch1,
                    onChanged: (v) => setState(() => _switch1 = v),
                  ),
                  const Divider(height: 1),
                  _buildSettingTile(
                    icon: Icons.bluetooth,
                    title: 'Bluetooth',
                    value: _switch2,
                    onChanged: (v) => setState(() => _switch2 = v),
                  ),
                  const Divider(height: 1),
                  _buildSettingTile(
                    icon: Icons.airplanemode_active,
                    title: 'Airplane Mode',
                    value: _notificationsEnabled,
                    onChanged: (v) => setState(() => _notificationsEnabled = v),
                  ),
                ],
              ),
            ),
          ]),
          
          _buildSection('Status Indicator', [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: _switch1 ? Colors.green.shade50 : Colors.red.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: _switch1 ? Colors.green : Colors.red,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    _switch1 ? Icons.check_circle : Icons.cancel,
                    color: _switch1 ? Colors.green : Colors.red,
                    size: 32,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _switch1 ? 'Service Active' : 'Service Inactive',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: _switch1 ? Colors.green : Colors.red,
                          ),
                        ),
                        Text(
                          _switch1 ? 'All systems operational' : 'Turn on to activate',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Switch(
                    value: _switch1,
                    onChanged: (v) => setState(() => _switch1 = v),
                  ),
                ],
              ),
            ),
          ]),
          
          const SizedBox(height: 16),
          const Text(
            '💡 Tips:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          _buildTip('• Switch untuk toggle on/off dengan smooth animation'),
          _buildTip('• SwitchListTile untuk switch dengan label dan icon'),
          _buildTip('• Gunakan untuk settings atau enable/disable features'),
          _buildTip('• activeColor untuk customize warna saat ON'),
        ],
      ),
    );
  }

  Widget _buildSettingTile({
    required IconData icon,
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      leading: Icon(icon, color: value ? Colors.blue : Colors.grey),
      title: Text(title),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blueAccent),
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
