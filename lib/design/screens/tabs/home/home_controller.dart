import 'package:get/get.dart';

import '../../../../core/models/feature.dart';

class HomeController extends GetxController {
  // Define your variables and methods here
  List<Feature> options = [];

  bool isLoading = true;
  @override
  void onInit() {
    super.onInit();
    // Initialize your variables or fetch data here
  }

  @override
  void onReady() {
    super.onReady();
    // Called after the widget is rendered on screen
  }

    Future<void> onRefresh() async {
   
  }

  @override
  void onClose() {
    // Clean up resources here
    super.onClose();
  }
}