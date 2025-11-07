import 'package:get/get.dart';
import '../controllers/device_features_controller.dart';

class Device_featuresBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Device_featuresController>(
      () => Device_featuresController(),
    );
  }
}
