import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/local_storage_controller.dart';

class Local_storageView extends GetView<Local_storageController> {
  const Local_storageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Storage'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'Local Storage',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
