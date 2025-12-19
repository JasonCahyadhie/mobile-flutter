import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/widgets_controller.dart';

/// Search delegate for widgets menu
class WidgetSearchDelegate extends SearchDelegate<String> {
  final WidgetsController controller;

  WidgetSearchDelegate(this.controller);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          controller.updateSearchQuery('');
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
        controller.updateSearchQuery('');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    controller.updateSearchQuery(query);
    return _buildSearchResults(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    controller.updateSearchQuery(query);
    return _buildSearchResults(context);
  }

  Widget _buildSearchResults(BuildContext context) {
    return Obx(() {
      final items = controller.filteredMenuItems;
      
      if (items.isEmpty) {
        return const Center(
          child: Text('No results found'),
        );
      }

      return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: ListTile(
              leading: Icon(item.icon, size: 32, color: Theme.of(context).colorScheme.primary),
              title: Text(item.title),
              subtitle: Text(item.description),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                close(context, '');
                controller.updateSearchQuery('');
                Get.toNamed(item.route);
              },
            ),
          );
        },
      );
    });
  }
}

class WidgetsView extends GetView<WidgetsController> {
  const WidgetsView({super.key});

  // Color palette for the circular avatar icons
  final List<Color> iconColors = const [
    Color(0xFF4DD0E1), // Cyan
    Color(0xFFFF9800), // Orange
    Color(0xFF76FF03), // Light Green
    Color(0xFFF44336), // Red
    Color(0xFFE91E63), // Pink/Magenta
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Get.back(),
        ),
        title: const Text(
          'Mobile Programming',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple.shade400, Colors.blue.shade400],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              showSearch(
                context: context,
                delegate: WidgetSearchDelegate(controller),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Praktikum Widgets',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              final items = controller.filteredMenuItems;
              
              return ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  final color = iconColors[index % iconColors.length];
                  return _buildMenuListTile(context, item, color);
                },
              );
            }),
          ),
        ],
      ),
    );
  }

  /// Builds a list tile with circular colored icon, title, subtitle, and chevron
  Widget _buildMenuListTile(BuildContext context, MenuItem item, Color color) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: color,
          radius: 24,
          child: Icon(
            item.icon,
            color: Colors.white,
            size: 28,
          ),
        ),
        title: Text(
          item.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          item.description,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey.shade600,
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: Colors.grey,
          size: 28,
        ),
        onTap: () => Get.toNamed(item.route),
      ),
    );
  }
}
