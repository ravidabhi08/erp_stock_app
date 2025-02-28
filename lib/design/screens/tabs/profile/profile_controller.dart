import 'package:erp_stocks/design/screens/main_controller.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  MainController get mainController => Get.find<MainController>();

  @override
  void onInit() {
    super.onInit();
    init();
  }

  Future init() async {
    update();
  }
}
