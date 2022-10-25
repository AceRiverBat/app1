import 'package:get/get.dart';

import 'getX_controller.dart';

class GetxBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetXController());
  }
}
