import 'package:get/get.dart';
import '../controllers/study_case_controller.dart';

class Study_caseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Study_caseController>(
      () => Study_caseController(),
    );
  }
}
