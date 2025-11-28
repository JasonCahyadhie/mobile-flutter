import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/layout_structure_controller.dart';
import '../../../routes/app_pages.dart';

class LayoutStructureView extends GetView<LayoutStructureController> {
  const LayoutStructureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Structure'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Layout Structure Examples',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          _buildMenuItem(context, 'Container Layout', Routes.LS_CONTAINER),
          _buildMenuItem(context, 'Row & Column Layout', Routes.LS_ROW_COLUMN),
          _buildMenuItem(context, 'Stack Layout', Routes.LS_STACK),
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
