import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/scaffold_controller.dart';

class ScaffoldView extends GetView<ScaffoldController> {
  const ScaffoldView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Struktur AppBar
      appBar: AppBar(
        title: const Text('Scaffold Demo'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      // 2. Struktur Body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 80, color: Colors.green),
            const SizedBox(height: 20),
            const Text(
              'Scaffold Structure',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('AppBar, Body, FloatingActionButton & more'),
          ],
        ),
      ),
      // 3. Struktur FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      // 4. Struktur Drawer
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.green),
              child: const Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
            ),
          ],
        ),
      ),
      // 5. Struktur BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
