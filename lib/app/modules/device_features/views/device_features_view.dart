import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/device_features_controller.dart';

class Device_featuresView extends GetView<Device_featuresController> {
  const Device_featuresView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Features'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'Device Features',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
