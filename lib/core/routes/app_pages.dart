import 'package:erp_stocks/design/screens/main_controller.dart';
import 'package:erp_stocks/design/screens/main_view.dart';
import 'package:erp_stocks/design/screens/startup/login_controller.dart';
import 'package:erp_stocks/design/screens/startup/login_view.dart';
import 'package:erp_stocks/design/screens/startup/splash_view.dart';
import 'package:erp_stocks/design/screens/tabs/home/notifications/notifications_controller.dart';
import 'package:erp_stocks/design/screens/tabs/home/notifications/notifications_view.dart';
import 'package:erp_stocks/design/screens/tabs/home/total_active_items_view.dart';
import 'package:erp_stocks/design/screens/tabs/home/total_stock_value_controller.dart';
import 'package:erp_stocks/design/screens/tabs/home/total_stock_value_view.dart';
import 'package:erp_stocks/design/screens/tabs/home/total_warehouses_view.dart';
import 'package:erp_stocks/design/screens/tabs/profile/appearance_controller.dart';
import 'package:erp_stocks/design/screens/tabs/profile/appearance_view.dart';
import 'package:erp_stocks/design/screens/tabs/profile/change_password_controller.dart';
import 'package:erp_stocks/design/screens/tabs/profile/change_password_view.dart';
import 'package:erp_stocks/design/screens/tabs/profile/personal-details/personal_details_view.dart';
import 'package:erp_stocks/design/screens/tabs/profile/select_language_controller.dart';
import 'package:erp_stocks/design/screens/tabs/profile/select_language_view.dart';
import 'package:erp_stocks/design/screens/tabs/stock/stock_details.dart';
import 'package:erp_stocks/design/screens/tabs/stock/stock_details_controller.dart';
import 'package:erp_stocks/design/screens/translation_controller.dart';
import 'package:erp_stocks/design/screens/unknown_404_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static final unknownRoute = GetPage(name: _Paths.UNKNOWN_404, page: () => const Unknown404View());

  static List<GetPage<dynamic>> get routes {
    return [
      GetPage(name: _Paths.SPLASH, page: () => const SplashView()),
      GetPage(
        name: _Paths.LOGIN,
        page: () => const LoginView(),
        binding: BindingsBuilder(() => Get.lazyPut<LoginController>(() => LoginController())),
      ),
      GetPage(
        name: _Paths.MAIN,
        page: () => const MainView(),
        binding: BindingsBuilder(() => Get.lazyPut<MainController>(() => MainController())),
      ),
      GetPage(
        name: _Paths.NOTIFICATIONS,
        page: () => const NotificationsView(),
        binding: BindingsBuilder(
          () => Get.lazyPut<NotificationsController>(() => NotificationsController()),
        ),
      ),
      GetPage(
        name: _Paths.TOTALSTOCKVALUEVIEW,
        page: () => const TotalStockValueView(),
        binding: BindingsBuilder(
          () => Get.lazyPut<TotalStockValueController>(() => TotalStockValueController()),
        ),
      ),
      GetPage(name: _Paths.TOTALWAREHOUSES, page: () => const TotalWarehousesView()),
      GetPage(name: _Paths.TOTAL_ACTIVE_ITEMS, page: () => const TotalActiveItemsView()),
      GetPage(
        name: _Paths.STOCKDETAILS,
        page: () => const StockDetails(),
        binding: BindingsBuilder(
          () => Get.lazyPut<StockDetailsController>(() => StockDetailsController()),
        ),
      ),
      GetPage(
        name: _Paths.APPEARANCE,
        page: () => const AppearanceView(),
        binding: BindingsBuilder(
          () => Get.lazyPut<AppearanceController>(() => AppearanceController()),
        ),
      ),
      GetPage(name: _Paths.PERSONAL_DETAILS, page: () => const PersonalDetailsView()),
      GetPage(
        name: _Paths.CHANGE_PASSWORD,
        page: () => const ChangePasswordView(),
        binding: BindingsBuilder(
          () => Get.lazyPut<ChangePasswordController>(() => ChangePasswordController()),
        ),
      ),
      GetPage(
        name: _Paths.SELECT_LANGUAGE,
        page: () => const SelectLanguageView(),
        binding: BindingsBuilder(
          () => Get.lazyPut<SelectLanguageController>(() => SelectLanguageController()),
        ),
      ),
      GetPage(
        name: _Paths.APPEARANCE,
        page: () => const AppearanceView(),
        binding: BindingsBuilder(
          () => Get.lazyPut<AppearanceController>(() => AppearanceController()),
        ),
      ),
    ];
  }
}

class BindingsX {
  static BindingsBuilder initialBindings() {
    return BindingsBuilder(() {
      Get.lazyPut<TranslationController>(() => TranslationController());
    });
  }
}
