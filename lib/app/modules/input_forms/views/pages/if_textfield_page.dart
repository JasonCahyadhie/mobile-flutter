import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IfTextfieldPage extends StatefulWidget {
  const IfTextfieldPage({super.key});

  @override
  State<IfTextfieldPage> createState() => _IfTextfieldPageState();
}

class _IfTextfieldPageState extends State<IfTextfieldPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  String _submittedText = '';

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Examples'),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'TextField Widget Examples',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'TextField adalah widget input untuk menerima teks dari user.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          
          _buildSection('Basic TextField', [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
          ]),
          
          _buildSection('TextField with Icon', [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'example@email.com',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ]),
          
          _buildSection('Password TextField', [
            TextField(
              controller: _passwordController,
              obscureText: _obscurePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter password',
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() => _obscurePassword = !_obscurePassword);
                  },
                ),
                border: const OutlineInputBorder(),
              ),
            ),
          ]),
          
          _buildSection('Multi-line TextField', [
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Message',
                hintText: 'Enter your message here...',
                border: OutlineInputBorder(),
                alignLabelWithHint: true,
              ),
            ),
          ]),
          
          _buildSection('TextField with Character Counter', [
            const TextField(
              maxLength: 50,
              decoration: InputDecoration(
                labelText: 'Bio',
                hintText: 'Tell us about yourself',
                border: OutlineInputBorder(),
                helperText: 'Maximum 50 characters',
              ),
            ),
          ]),
          
          _buildSection('Different Keyboard Types', [
            const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Age',
                prefixIcon: Icon(Icons.numbers),
                border: OutlineInputBorder(),
              ),
            ),
          ]),
          
          _buildSection('TextField with Submit Action', [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Type and press submit',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                setState(() => _submittedText = value);
              },
            ),
            if (_submittedText.isNotEmpty) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.cyan.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('You submitted: $_submittedText'),
              ),
            ],
          ]),
          
          const SizedBox(height: 16),
          const Text(
            '💡 Tips:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          _buildTip('• Gunakan TextEditingController untuk mengambil nilai'),
          _buildTip('• decoration untuk styling (border, label, hint, icon)'),
          _buildTip('• keyboardType untuk tipe keyboard yang sesuai'),
          _buildTip('• obscureText: true untuk password field'),
          _buildTip('• maxLines untuk multi-line input'),
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
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.cyan),
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
