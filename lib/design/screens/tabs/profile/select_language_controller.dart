import 'package:get/get.dart';

class SelectLanguageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    init();
  }

  RxBool isLoading = false.obs;
  Future<void> init() async {
    isLoading.value = true;
    isLoading.value = false;
  }

  // Future<void> changeLanguage(GetLanguageModel selectedLanguage) async {
  //   if (selectedLanguage.language != null) {
  //     await GSServices.setLocale(selectedLanguage);
  //     await Get.forceAppUpdate();
  //     this.selectedLanguage.value = selectedLanguage;
  //     ESSFirebaseAnalytics().onClick(name: "language_${selectedLanguage.languageName}");
  //   }
  // }
}
