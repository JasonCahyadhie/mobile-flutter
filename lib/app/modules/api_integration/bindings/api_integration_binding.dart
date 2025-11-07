import 'package:get/get.dart';
import '../controllers/api_integration_controller.dart';

class Api_integrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Api_integrationController>(
      () => Api_integrationController(),
    );
  }
}
