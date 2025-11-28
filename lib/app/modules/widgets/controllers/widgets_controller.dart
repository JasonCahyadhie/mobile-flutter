import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class MenuItem {
  final String title;
  final String description;
  final IconData icon;
  final String route;

  MenuItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.route,
  });
}

class WidgetsController extends GetxController {
  final searchQuery = ''.obs;
  
  final List<MenuItem> menuItems = [
    MenuItem(
      title: 'Material Design',
      description: 'Material Design Components',
      icon: Icons.design_services,
      route: Routes.MATERIAL_DESIGN,
    ),
    MenuItem(
      title: 'Basic Widget',
      description: 'Basic Widget Examples',
      icon: Icons.auto_awesome,
      route: Routes.BASIC_WIDGET,
    ),
    MenuItem(
      title: 'Layout Structure',
      description: 'Layout and Structure',
      icon: Icons.view_quilt,
      route: Routes.LAYOUT_STRUCTURE,
    ),
    MenuItem(
      title: 'Input Forms',
      description: 'Form Input Widgets',
      icon: Icons.input,
      route: Routes.INPUT_FORMS,
    ),
    MenuItem(
      title: 'Scrolling List',
      description: 'Scrolling and List Widgets',
      icon: Icons.list,
      route: Routes.SCROLLING_LIST,
    ),
    MenuItem(
      title: 'API Integration',
      description: 'REST API Integration',
      icon: Icons.cloud,
      route: Routes.API_INTEGRATION,
    ),
    MenuItem(
      title: 'Local Storage',
      description: 'Local Data Storage',
      icon: Icons.storage,
      route: Routes.LOCAL_STORAGE,
    ),
    MenuItem(
      title: 'Device Features',
      description: 'Device Hardware Features',
      icon: Icons.phone_android,
      route: Routes.DEVICE_FEATURES,
    ),
    MenuItem(
      title: 'Study Case',
      description: 'Practical Study Cases',
      icon: Icons.school,
      route: Routes.STUDY_CASE,
    ),
  ];

  List<MenuItem> get filteredMenuItems {
    if (searchQuery.value.isEmpty) {
      return menuItems;
    }
    final query = searchQuery.value.toLowerCase();
    return menuItems.where((item) {
      return item.title.toLowerCase().contains(query) ||
          item.description.toLowerCase().contains(query);
    }).toList();
  }

  void updateSearchQuery(String query) {
    searchQuery.value = query;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
