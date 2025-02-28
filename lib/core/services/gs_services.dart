import 'dart:developer';

import 'package:erp_stocks/core/models/ess_theme_data.dart';
import 'package:erp_stocks/core/models/language_model.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '/core/utils/core_constants.dart';

class GSServices {
  GSServices._();
  static final GSServices _instance = GSServices._();
  factory GSServices() => _instance;

  static final GetStorage _appGS = GetStorage('app');
  static final GetStorage _userGS = GetStorage('user');
  static final GetStorage _localeGS = GetStorage('locale');
  static final GetStorage _guestUserGS = GetStorage('guestUser');
  static final GetStorage _quickLoginGS = GetStorage('quickLogin');

  static Future<void> initialize() async {
    await GetStorage.init('app');
    await GetStorage.init('user');
    // TODO: should be in _userGS
    await GetStorage.init('locale');
    // TODO: should be in _appGS
    await GetStorage.init('guestUser');
    // TODO: should be in _appGS
    await GetStorage.init('quickLogin');
    // TODO: should be in _appGS
    await _appGS.writeIfNull('isPromptedToEnableBiometric', false);
    // TODO: should be in _userGS
    await _appGS.writeIfNull('bioMetricAuth', false);
    await _guestUserGS.writeIfNull('isGuest', false);
    await _guestUserGS.writeIfNull('isGuestFormFilled', false);
    await _localeGS.writeIfNull('locale', GetLanguageModel.defaultLocale().toJson());
    if (isGuestUser && !isGuestFormFilled) {
      // Clear local storage so that guest user can start fresh, this won't affect flow
      await GSServices().clearAndSetDefaultUserStorage();
    }
    await _userGS.writeIfNull('essThemeData', const ESSThemeData().toJson());
    _userGS.listenKey('essThemeData', (value) {
      Get.forceAppUpdate();
    });
  }

  //! _guestUserGS
  static Future<void> setIsGuestUser({required bool isGuest}) async {
    await _guestUserGS.write('isGuest', isGuest);
    log("<--- Local isGuestUser Updated => ${isGuestUser.toString()} --->");
  }

  static bool get isGuestUser => _guestUserGS.read('isGuest') ?? false;

  static Future<void> setIsGuestFormFilled({required bool isFilled}) async {
    await _guestUserGS.write('isGuestFormFilled', isFilled);
    log("<--- Local isGuestFormFilled Updated => ${isGuestFormFilled.toString()} --->");
  }

  static bool get isGuestFormFilled => _guestUserGS.read('isGuestFormFilled') ?? false;

  //! _userGS
  // static Future<void> setUser({required GetUserModel user}) async {
  //   await _userGS.write('user', user.toJson());
  //   log("<--- Local User Updated => ${getUser.toString()} --->");
  // }

  // static GetUserModel? get getUser =>
  //     isNullEmptyOrFalse(_userGS.read('user')) ? null : GetUserModel.fromJson(_userGS.read('user'));

  // _userGS -> companyLogo
  static Future<void> setCompanyLogo({required String? companyLogo}) async {
    switch (isNullEmptyOrFalse(companyLogo)) {
      case false:
        companyLogo = checkAndGetFullImageURL(companyLogo!);
      case _:
        break;
    }
    await _userGS.write('companyLogo', companyLogo);
    log("<--- Local Company Logo Updated => ${getCompanyLogo.toString()} --->");
  }

  static String? get getCompanyLogo => _userGS.read('companyLogo');

  // _userGS -> bgLocation
  static Future<void> addBgLocation({
    required ({DateTime time, double lat, double long}) location,
  }) async {
    List<dynamic> savedLocations = getBgLocations;
    await _userGS.write(
      'bgLocations',
      savedLocations..add({
        'lat': location.lat,
        'long': location.long,
        'time': location.time.toIso8601String(),
      }),
    );
    log("<--- Local bgLocation Updated => ${getBgLocations.toString()} --->");
  }

  static List<dynamic> get getBgLocations =>
      isNullEmptyOrFalse(_userGS.read('bgLocations')) ? [] : _userGS.read('bgLocations');

  static Future<void> clearBgLocations() async => await _userGS.write('bgLocations', []);

  static bool get getIsPromptedToEnableBiometric =>
      _appGS.read<bool?>('isPromptedToEnableBiometric') ?? false;

  //! _quickLoginGS
  static Future<void> setQuickLogin({required ({String url, String userName}) data}) async {
    await _quickLoginGS.write('quickLogin', {'url': data.url, 'userName': data.userName});
    log("<--- Quick Login Updated => ${getQuickLoginData.toString()} --->");
  }

  static ({String url, String userName})? get getQuickLoginData {
    final dynamic data = _quickLoginGS.read('quickLogin');
    if (isNullEmptyOrFalse(data)) return null;
    return (url: data['url'], userName: data['userName']);
  }

  //! _localeGS
  static GetLanguageModel? get getLocale =>
      isNullEmptyOrFalse(_localeGS.read('locale'))
          ? null
          : GetLanguageModel.fromJson(_localeGS.read('locale'));

  static Future<void> setLocale(GetLanguageModel lan) async {
    if (lan.language != null) {
      await _localeGS.write('locale', lan.toJson());
      await Get.updateLocale(Locale.fromSubtags(languageCode: lan.language!));
      // if (getUser != null) {
      //   await Get.find<TranslationController>()
      //       .getTranslation(languageCode: GSServices.getLocale?.language);
      //   timeago.setLocaleMessages(lan.language!, TimeAgoi18nMessages());
      // }
      // else {
      //   log("<--- Cookies are NULL --->");
      // }
      log("<--- Local Locale Updated => ${getLocale.toString()} --->");
    } else {
      log("<--- Local Locale Updated => GetLanguageModel is null --->");
    }
  }

  Future<void> clearAndSetDefaultUserStorage() async {
    await _userGS.erase();
    await _userGS.write('essThemeData', const ESSThemeData().toJson());
  }

  //! _userGS -> ESS ThemeData
  static Future<bool> setThemeMode(ESSThemeMode mode) async {
    try {
      final essThemeData = getESSThemeData();
      if (essThemeData == null) return false;
      await _userGS.write('essThemeData', essThemeData.copyWith(themeMode: mode).toJson());
      return true;
    } catch (err) {
      log("<--- ESS ThemeData Error => ${err.toString()} --->");
      return false;
    } finally {
      log("<--- ESS ThemeData Updated => ${getESSThemeData()} --->");
    }
  }

  static Future<bool> setLightTheme(ESSThemeType theme) async {
    try {
      final essThemeData = getESSThemeData();
      if (essThemeData == null) return false;
      await _userGS.write('essThemeData', essThemeData.copyWith(lightTheme: theme).toJson());
      return true;
    } catch (err) {
      log("<--- ESS ThemeData Error => ${err.toString()} --->");
      return false;
    } finally {
      log("<--- ESS ThemeData Updated => ${getESSThemeData()} --->");
    }
  }

  static Future<bool> setDarkTheme(ESSThemeType theme) async {
    try {
      final essThemeData = getESSThemeData();
      if (essThemeData == null) return false;
      await _userGS.write('essThemeData', essThemeData.copyWith(darkTheme: theme).toJson());
      return true;
    } catch (err) {
      log("<--- ESS ThemeData Error => ${err.toString()} --->");
      return false;
    } finally {
      log("<--- ESS ThemeData Updated => ${getESSThemeData()} --->");
    }
  }

  static ESSThemeData? getESSThemeData() {
    final response = _userGS.read('essThemeData');
    if (response != null) {
      return ESSThemeData.fromJson(response);
    }
    return null;
  }
}
