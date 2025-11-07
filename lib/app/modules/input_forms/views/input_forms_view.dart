import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/input_forms_controller.dart';
import '../../../routes/app_routes.dart';

class InputFormsView extends GetView<InputFormsController> {
  const InputFormsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Forms'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Form Input Examples',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          _buildMenuItem(context, 'TextField', Routes.IF_TEXTFIELD),
          _buildMenuItem(context, 'Checkbox', Routes.IF_CHECKBOX),
          _buildMenuItem(context, 'Radio Button', Routes.IF_RADIO),
          _buildMenuItem(context, 'Switch', Routes.IF_SWITCH),
          _buildMenuItem(context, 'Dropdown', Routes.IF_DROPDOWN),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, String route) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () => Get.toNamed(route),
      ),
    );
  }
}
