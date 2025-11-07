import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/scrolling_list_controller.dart';
import '../../../routes/app_routes.dart';

class ScrollingListView extends GetView<ScrollingListController> {
  const ScrollingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrolling List'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Scrolling List Examples',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          _buildMenuItem(context, 'ListView', Routes.SL_LISTVIEW),
          _buildMenuItem(context, 'GridView', Routes.SL_GRIDVIEW),
          _buildMenuItem(context, 'PageView', Routes.SL_PAGEVIEW),
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
