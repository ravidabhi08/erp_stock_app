import 'package:erp_stocks/core/models/ess_theme_data.dart';
import 'package:erp_stocks/core/services/gs_services.dart';
import 'package:erp_stocks/design/components/ess_components.dart';
import 'package:erp_stocks/design/utils/design_utils.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mentions/flutter_mentions.dart';
import 'package:get/get.dart';

import 'core/routes/app_pages.dart';
import 'design/components/lifecycle_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GSServices.initialize();
   runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final essThemeData = GSServices.getESSThemeData();
    ESSThemeType? selectedTheme = ESSThemeType.defaultTheme;

    selectedTheme = switch (essThemeData?.themeMode) {
      ESSThemeMode.auto =>
        DateTime.now().hour >= 18 || DateTime.now().hour <= 6
            ? essThemeData?.darkTheme
            : essThemeData?.lightTheme,
      ESSThemeMode.system =>
        Get.isPlatformDarkMode ? essThemeData?.darkTheme : essThemeData?.lightTheme,
      ESSThemeMode.dark => essThemeData?.darkTheme,
      ESSThemeMode.light || _ => essThemeData?.lightTheme,
    };

    defaultSystemUIOverlayStyle();
    return UnFocusWrapper(
      child: Portal(
        child: LifeCycleManager(
          child: GetMaterialApp(
            title: appName,
            useInheritedMediaQuery: true,
            // navigatorObservers: [if (kReleaseMode) ESSFirebaseAnalytics.observer],
            builder: (context, child) {
              return child!;
            },
            theme: selectedTheme?.theme.toThemeData(context),
            getPages: AppPages.routes,
            initialRoute: Routes.SPLASH,
            debugShowCheckedModeBanner: false,
            unknownRoute: AppPages.unknownRoute,
            initialBinding: BindingsX.initialBindings(),

            // locale: Locale.fromSubtags(
            //   languageCode: GSServices.getLocale?.language ?? defaultLocale,
            // ),
            fallbackLocale: Locale.fromSubtags(languageCode: defaultLocale),
          ),
        ),
      ),
    );
  }
}
