import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/input_forms_controller.dart';
import '../../../routes/app_pages.dart';

class InputFormsView extends GetView<InputFormsController> {
  const InputFormsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Input Forms',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green.shade400,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green.shade400, Colors.teal.shade400],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Bentuk Input Forms',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              _buildWidgetCard('TextField', Icons.text_fields, Colors.blue.shade400, Routes.IF_TEXTFIELD),
              _buildWidgetCard('Checkbox', Icons.check_box, Colors.green.shade400, Routes.IF_CHECKBOX),
              _buildWidgetCard('Radio', Icons.radio_button_checked, Colors.purple.shade400, Routes.IF_RADIO),
              _buildWidgetCard('Switch', Icons.toggle_on, Colors.orange.shade400, Routes.IF_SWITCH),
              _buildWidgetCard('Dropdown', Icons.arrow_drop_down_circle, Colors.pink.shade400, Routes.IF_DROPDOWN),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWidgetCard(String title, IconData icon, Color color, String route) {
    return InkWell(
      onTap: () => Get.toNamed(route),
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 36),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
