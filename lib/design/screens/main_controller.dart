import 'package:erp_stocks/design/screens/tabs/profile/profile_controller.dart';
import 'package:erp_stocks/design/screens/tabs/stock/stock_controller.dart';
import 'package:erp_stocks/design/screens/tabs/stock_entry/stock_entry_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tabs/home/home_controller.dart';

class MainController extends GetxController {
  Rx<int> selectedTabIndex = 0.obs;
  final PageController pageController = PageController();

  @override
  void onInit() {
    super.onInit();

    init();
  }

  Future<void> syncEmployeeLog() async {}

  RxBool isLoading = false.obs;
  Future<void> init() async {
    isLoading.value = true;
    update();
    Get.put<HomeController>(HomeController());
    Get.put<StockController>(StockController());
    Get.put<StockEntryController>(StockEntryController());
    Get.put<ProfileController>(ProfileController());

    isLoading.value = false;
    update();
  }

  void onPageChanged(int value) {
    selectedTabIndex.value = value;
    update();
  }

  //  bool shouldShowFeature(bool feature) {
  //     return isPremium.isFalse || feature;
  //   }

  //   RxBool get isExpired => (validateSubscriptionModel?.expired == true).obs;
  //   RxBool get isPremium => (validateSubscriptionModel?.isPremium == true).obs;
  //   // Future<void> getTranslation() async {
  //   await Get.find<TranslationController>()
  //       .getTranslation(languageCode: GSServices.getLocale?.language);
  // }
}
