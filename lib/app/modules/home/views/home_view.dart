import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../../../routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mobile Programming',
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
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey.shade100,
            child: const Text(
              'Modul Praktikum Universitas Matana',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              children: [
                _buildMenuCard(
                  'Widgets',
                  'Contoh widget di flutter',
                  Icons.widgets,
                  Colors.cyan.shade300,
                  Routes.WIDGETS,
                ),
                _buildMenuCard(
                  'API Integration',
                  'contoh latihan webservice',
                  Icons.cloud_outlined,
                  Colors.blue.shade400,
                  Routes.API_INTEGRATION,
                ),
                _buildMenuCard(
                  'Locale Storage',
                  'contoh latihan penyimanan di lokal',
                  Icons.storage_outlined,
                  Colors.red.shade400,
                  Routes.LOCAL_STORAGE,
                ),
                _buildMenuCard(
                  'Device Features',
                  'Contoh latihan mengakses hardware',
                  Icons.devices_other,
                  Colors.green.shade300,
                  Routes.DEVICE_FEATURES,
                ),
                _buildMenuCard(
                  'Project Base',
                  'Company Profile Informatika',
                  Icons.flash_on,
                  Colors.yellow.shade400,
                  Routes.STUDY_CASE,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuCard(
    String title,
    String subtitle,
    IconData icon,
    Color iconColor,
    String route,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200, width: 1),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: iconColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 28,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey.shade600,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey.shade600,
        ),
        onTap: () => Get.toNamed(route),
      ),
    );
  }
}
