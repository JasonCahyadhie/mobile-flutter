import 'package:get/get.dart';
import '../controllers/local_storage_controller.dart';

class Local_storageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Local_storageController>(
      () => Local_storageController(),
    );
  }
}
