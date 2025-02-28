// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const UNKNOW_404 = _Paths.UNKNOWN_404;

  static const SPLASH = _Paths.SPLASH;
  static const LOGIN = _Paths.LOGIN;

  static const MAIN = _Paths.MAIN;

  static const NOTIFICATIONS = _Paths.NOTIFICATIONS;
  static const TOTALSTOCKVALUEVIEW = _Paths.TOTALSTOCKVALUEVIEW;
  static const TOTALWAREHOUSES = _Paths.TOTALWAREHOUSES;

  static const STOCKDETAILS = _Paths.STOCKDETAILS;

  static const CHANGE_PASSWORD = _Paths.CHANGE_PASSWORD;
  static const SELECT_LANGUAGE = _Paths.SELECT_LANGUAGE;
  static const APPEARANCE = _Paths.APPEARANCE;
  static const PERSONAL_DETAILS = _Paths.PERSONAL_DETAILS;
}

abstract class _Paths {
  static const UNKNOWN_404 = '/404';

  static const SPLASH = '/splash';
  static const LOGIN = '/login';

  static const MAIN = '/main';

  static const STOCK = '/stock';

  static const HOME = '/home';
  static const PROFILE = '/profile';

  static const NOTIFICATIONS = '$HOME/notifications';
  static const TOTALSTOCKVALUEVIEW = '$HOME/total-stock-value-view';
  static const TOTALWAREHOUSES = '$HOME/total-warehouses-view';

  static const STOCKDETAILS = '$STOCK/stock-details';

  static const CHANGE_PASSWORD = '$PROFILE/change-password';
  static const SELECT_LANGUAGE = '$PROFILE/select-language';
  static const APPEARANCE = '$PROFILE/appearance';
  static const PERSONAL_DETAILS = '$PROFILE/personal-details';
}
