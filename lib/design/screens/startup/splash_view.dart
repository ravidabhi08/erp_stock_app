import 'package:erp_stocks/core/routes/app_pages.dart';
import 'package:erp_stocks/design/utils/design_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () async {
      // GSServices.getUser != null
      //     ? await InternetConnectionChecker().hasConnection
      //         ?
      Get.offAllNamed(Routes.LOGIN);
      //     : Get.offAllNamed(OfflineRoutes.HOME)
      // : Get.offAllNamed(Routes.LOGIN);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(252, 252, 252, 1),
      body: Center(
        child:
        // isNullEmptyOrFalse(GSServices.getCompanyLogo)
        selectImage(setldImageIcon(AppGifs.essSplash)),
        // : networkImage(image: GSServices.getCompanyLogo!, showPlaceholder: false),
      ).paddingSymmetric(horizontal: 25),
    );
  }
}
