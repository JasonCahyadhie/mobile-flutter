import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/study_case_controller.dart';

class Study_caseView extends GetView<Study_caseController> {
  const Study_caseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Case'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'Study Case',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
