import 'package:erp_stocks/core/models/ess_theme_data.dart';
import 'package:erp_stocks/core/services/gs_services.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AppearanceController extends GetxController {
  ESSThemeMode? get themeMode => GSServices.getESSThemeData()?.themeMode;

  ESSThemeType? get lightTheme => GSServices.getESSThemeData()?.lightTheme;
  ESSThemeType? get darkTheme => GSServices.getESSThemeData()?.darkTheme;

  List<ESSThemeType>? get lightThemes => ESSThemeType.lightThemes;
  List<ESSThemeType>? get darkThemes => ESSThemeType.darkThemes;

  Future<void> setThemeMode(ESSThemeMode themeMode) async {
    await GSServices.setThemeMode(themeMode);
    update();
  }

  Future<void> setLightTheme(ESSThemeType theme) async {
    await GSServices.setLightTheme(theme);
    update();
  }

  Future<void> setDarkTheme(ESSThemeType theme) async {
    await GSServices.setDarkTheme(theme);
    update();
  }
}
