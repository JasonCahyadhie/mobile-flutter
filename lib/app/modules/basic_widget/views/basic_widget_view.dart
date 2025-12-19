import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/basic_widget_controller.dart';
import '../../../routes/app_pages.dart';

class BasicWidgetView extends GetView<BasicWidgetController> {
  const BasicWidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Basic Widget',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange.shade400,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orange.shade400, Colors.red.shade400],
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
              'Bentuk Basic Widget',
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
              _buildWidgetCard('Text', Icons.text_fields, Colors.blue.shade400, Routes.BW_TEXT),
              _buildWidgetCard('Button', Icons.smart_button, Colors.green.shade400, Routes.BW_BUTTON),
              _buildWidgetCard('Image', Icons.image, Colors.purple.shade400, Routes.BW_IMAGE),
              _buildWidgetCard('Icon', Icons.star, Colors.orange.shade400, Routes.BW_ICON),
              _buildWidgetCard('NetworkImage', Icons.cloud_download, Colors.cyan.shade400, Routes.BW_NETWORK_IMAGE),
              _buildWidgetCard('AssetImage', Icons.photo_library, Colors.teal.shade400, Routes.BW_ASSET_IMAGE),
              _buildWidgetCard('Container', Icons.crop_square, Colors.indigo.shade400, Routes.BW_CONTAINER),
              _buildWidgetCard('SizedBox', Icons.crop_din, Colors.pink.shade400, Routes.BW_SIZED_BOX),
              _buildWidgetCard('Placeholder', Icons.border_all, Colors.lime.shade400, Routes.BW_PLACEHOLDER),
              _buildWidgetCard('RichText', Icons.text_format, Colors.amber.shade400, Routes.BW_RICH_TEXT),
              _buildWidgetCard('Spacer', Icons.space_bar, Colors.brown.shade400, Routes.BW_SPACER),
              _buildWidgetCard('Expanded', Icons.open_in_full, Colors.lightBlue.shade400, Routes.BW_EXPANDED),
              _buildWidgetCard('Flexible', Icons.fit_screen, Colors.deepOrange.shade400, Routes.BW_FLEXIBLE),
              _buildWidgetCard('Builder', Icons.construction, Colors.blueGrey.shade400, Routes.BW_BUILDER),
              _buildWidgetCard('ProgressIndicator', Icons.refresh, Colors.deepPurple.shade400, Routes.BW_PROGRESS_INDICATOR),
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
