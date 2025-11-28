import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/material_design_controller.dart';
import '../../../routes/app_pages.dart';

class MaterialDesignView extends GetView<MaterialDesignController> {
  const MaterialDesignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Design'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Material Design Components',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          _buildMenuItem(context, 'AppBar', Routes.MD_APPBAR),
          _buildMenuItem(context, 'MaterialApp', Routes.MD_MATERIALAPP),
          _buildMenuItem(context, 'Scaffold', Routes.MD_SCAFFOLD),
          _buildMenuItem(context, 'Container', Routes.MD_CONTAINER),
          _buildMenuItem(context, 'Center', Routes.MD_CENTER),
          _buildMenuItem(context, 'Column', Routes.MD_COLUMN),
          _buildMenuItem(context, 'Row', Routes.MD_ROW),
          _buildMenuItem(context, 'ListView', Routes.MD_LISTVIEW),
          _buildMenuItem(context, 'GridView', Routes.MD_GRIDVIEW),
          _buildMenuItem(context, 'Stack', Routes.MD_STACK),
          _buildMenuItem(context, 'AspectRatio', Routes.MD_ASPECTRATIO),
          _buildMenuItem(context, 'Padding', Routes.MD_PADDING),
          _buildMenuItem(context, 'Expanded', Routes.MD_EXPANDED),
          _buildMenuItem(context, 'SizedBox', Routes.MD_SIZEDBOX),
          _buildMenuItem(context, 'Card', Routes.MD_CARD),
          _buildMenuItem(context, 'InkWell', Routes.MD_INKWELL),
          _buildMenuItem(context, 'Image', Routes.MD_IMAGE),
          _buildMenuItem(context, 'CircleAvatar', Routes.MD_CIRCLEAVATAR),
          _buildMenuItem(context, 'Icon', Routes.MD_ICON),
          _buildMenuItem(context, 'BottomSheet', Routes.MD_BOTTOMSHEET),
          _buildMenuItem(context, 'AlertDialog', Routes.MD_ALERTDIALOG),
          _buildMenuItem(context, 'SnackBar', Routes.MD_SNACKBAR),
          _buildMenuItem(context, 'Drawer', Routes.MD_DRAWER),
          _buildMenuItem(context, 'BottomNavigationBar', Routes.MD_BOTTOMNAVBAR),
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
