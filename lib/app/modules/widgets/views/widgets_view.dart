import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/widgets_controller.dart';

class WidgetsView extends GetView<WidgetsController> {
  const WidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'Widgets',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
