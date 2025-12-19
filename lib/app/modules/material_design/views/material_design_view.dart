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
        title: const Text(
          'Widget Material Design',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple.shade400,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple.shade400, Colors.blue.shade400],
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
              'Bentuk Material Design',
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
              _buildWidgetCard(
                'AppBar',
                Icons.star,
                Colors.lightGreen.shade400,
                Routes.MD_APPBAR,
              ),
              _buildWidgetCard(
                'MaterialApp',
                Icons.ac_unit,
                Colors.blue.shade400,
                Routes.MD_MATERIALAPP,
              ),
              _buildWidgetCard(
                'Scaffold',
                Icons.alarm,
                Colors.pink.shade400,
                Routes.MD_SCAFFOLD,
              ),
              _buildWidgetCard(
                'BottomNavigationBar',
                Icons.watch_later_outlined,
                Colors.purple.shade400,
                Routes.MD_BOTTOM_NAVIGATION_BAR,
              ),
              _buildWidgetCard(
                'NavigationBar',
                Icons.add,
                Colors.deepPurple.shade400,
                Routes.MD_NAVIGATION_BAR,
              ),
              _buildWidgetCard(
                'NavigationDrawer',
                Icons.accessible,
                Colors.indigo.shade600,
                Routes.MD_NAVIGATION_DRAWER,
              ),
              _buildWidgetCard(
                'NavigationRail',
                Icons.account_balance,
                Colors.cyan.shade400,
                Routes.MD_NAVIGATION_RAIL,
              ),
              _buildWidgetCard(
                'Drawer',
                Icons.crop_square,
                Colors.cyan.shade500,
                Routes.MD_DRAWER,
              ),
              _buildWidgetCard(
                'FloatingActionButton',
                Icons.crop_square,
                Colors.cyan.shade300,
                Routes.MD_FLOATING_ACTION_BUTTON,
              ),
              _buildWidgetCard(
                'SnackBar',
                Icons.crop_portrait,
                Colors.teal.shade400,
                Routes.MD_SNACKBAR,
              ),
              _buildWidgetCard(
                'ButtonSheet',
                Icons.account_circle,
                Colors.teal.shade600,
                Routes.MD_BOTTOMSHEET,
              ),
              _buildWidgetCard(
                'Card',
                Icons.credit_card,
                Colors.lightGreen.shade300,
                Routes.MD_CARD,
              ),
              _buildWidgetCard(
                'Chip',
                Icons.cancel,
                Colors.lime.shade400,
                Routes.MD_CHIP,
              ),
              _buildWidgetCard(
                'RawChip',
                Icons.smartphone,
                Colors.yellow.shade400,
                Routes.MD_RAW_CHIP,
              ),
              _buildWidgetCard(
                'CircularProgressIndicator',
                Icons.calendar_month,
                Colors.orange.shade400,
                Routes.MD_CIRCULAR_PROGRESS_INDICATOR,
              ),
              _buildWidgetCard(
                'LinearProgressIndicator',
                Icons.add,
                Colors.deepOrange.shade400,
                Routes.MD_LINEAR_PROGRESS_INDICATOR,
              ),
              _buildWidgetCard(
                'DatePicker',
                Icons.notifications,
                Colors.deepOrange.shade300,
                Routes.MD_DATE_PICKER,
              ),
              _buildWidgetCard(
                'TimePicker',
                Icons.access_time,
                Colors.brown.shade400,
                Routes.MD_TIME_PICKER,
              ),
              _buildWidgetCard(
                'Container',
                Icons.crop_square,
                Colors.blue.shade600,
                Routes.MD_CONTAINER,
              ),
              _buildWidgetCard(
                'Center',
                Icons.center_focus_strong,
                Colors.green.shade600,
                Routes.MD_CENTER,
              ),
              _buildWidgetCard(
                'Column',
                Icons.view_column,
                Colors.indigo.shade400,
                Routes.MD_COLUMN,
              ),
              _buildWidgetCard(
                'Row',
                Icons.view_week,
                Colors.teal.shade700,
                Routes.MD_ROW,
              ),
              _buildWidgetCard(
                'ListView',
                Icons.list,
                Colors.amber.shade600,
                Routes.MD_LISTVIEW,
              ),
              _buildWidgetCard(
                'GridView',
                Icons.grid_on,
                Colors.red.shade400,
                Routes.MD_GRIDVIEW,
              ),
              _buildWidgetCard(
                'Stack',
                Icons.layers,
                Colors.purple.shade600,
                Routes.MD_STACK,
              ),
              _buildWidgetCard(
                'AspectRatio',
                Icons.aspect_ratio,
                Colors.pink.shade600,
                Routes.MD_ASPECTRATIO,
              ),
              _buildWidgetCard(
                'Padding',
                Icons.padding,
                Colors.orange.shade600,
                Routes.MD_PADDING,
              ),
              _buildWidgetCard(
                'Expanded',
                Icons.open_in_full,
                Colors.lightBlue.shade500,
                Routes.MD_EXPANDED,
              ),
              _buildWidgetCard(
                'SizedBox',
                Icons.crop_din,
                Colors.lime.shade600,
                Routes.MD_SIZEDBOX,
              ),
              _buildWidgetCard(
                'InkWell',
                Icons.touch_app,
                Colors.blueGrey.shade500,
                Routes.MD_INKWELL,
              ),
              _buildWidgetCard(
                'Image',
                Icons.image,
                Colors.cyan.shade700,
                Routes.MD_IMAGE,
              ),
              _buildWidgetCard(
                'CircleAvatar',
                Icons.account_circle,
                Colors.deepPurple.shade300,
                Routes.MD_CIRCLEAVATAR,
              ),
              _buildWidgetCard(
                'Icon',
                Icons.emoji_emotions,
                Colors.amber.shade400,
                Routes.MD_ICON,
              ),
              _buildWidgetCard(
                'AlertDialog',
                Icons.error_outline,
                Colors.red.shade600,
                Routes.MD_ALERTDIALOG,
              ),
              _buildWidgetCard(
                'Divider',
                Icons.horizontal_rule,
                Colors.grey.shade600,
                Routes.MD_DIVIDER,
              ),
              _buildWidgetCard(
                'IconButton',
                Icons.radio_button_checked,
                Colors.blue.shade800,
                Routes.MD_ICON_BUTTON,
              ),
              _buildWidgetCard(
                'MaterialButton',
                Icons.smart_button,
                Colors.green.shade700,
                Routes.MD_MATERIAL_BUTTON,
              ),
              _buildWidgetCard(
                'ListTile',
                Icons.list_alt,
                Colors.indigo.shade700,
                Routes.MD_LIST_TILE,
              ),
              _buildWidgetCard(
                'TabBar',
                Icons.tab,
                Colors.purple.shade700,
                Routes.MD_TAB_BAR,
              ),
              _buildWidgetCard(
                'TabBarView',
                Icons.tab_unselected,
                Colors.pink.shade700,
                Routes.MD_TAB_BAR_VIEW,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWidgetCard(
    String title,
    IconData icon,
    Color color,
    String route,
  ) {
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
            Icon(
              icon,
              color: Colors.white,
              size: 36,
            ),
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
