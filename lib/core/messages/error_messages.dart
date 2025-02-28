
import 'package:erp_stocks/design/screens/translation_controller.dart';

class ErrorMessages {
  static String get internalError =>
      TranslationController.td.internalErrorOccurredPleaseTryAgainLater;
  static String get unknownError => TranslationController.td.somethingWentWrongPleaseTryAgain;
  static String get locationNotEnabledGotoSettings =>
      TranslationController.td.goToSettingsAndEnableTheLocationPermissionTapToOpenSettings;
  static String get grantAlwaysUseLocation =>
      TranslationController.td.goToSettingsAndGrantAlwaysUseLocationPermissionTapToOpenSettings;
  static String get forcefullyLogoutApology =>
      TranslationController.td.weAreSorryForTheInconveniencePleaseLoginAgain;
  static String get outsideLocation =>
      TranslationController.td.unableToProceedYouAreOutsideTheAuthorisedLocationForThisAction;
  static String get sessionExpired =>
      TranslationController.td.yourSessionHasExpiredPleaseLoginAgain;
  static String get selectCustomer => TranslationController.td.pleaseSelectCustomer;
  static String get cameraPermissionRequired => TranslationController.td.cameraPermissionIsRequired;
  static String get internetConnectionRequired =>
      TranslationController.td.internetConnectionIsRequired;
  static String get noDataToSync => TranslationController.td.noDataToSync;
  static String get quickCheckInMessage1 =>
      TranslationController.td.whoaThereWereNotTimeTravelersYetGiveItAMinuteBeforeTryingAgain;
  static String get quickCheckInMessage2 =>
      TranslationController.td.holdYourHorsesLetsSavorThePresentMomentBeforeLeapingIntoTheFuture;
  static String get quickCheckInMessage3 =>
      TranslationController.td.feelingRestlessHuhTakeABreatherAndComeBackInAJiffy;
  static String get quickCheckInMessage4 => TranslationController
      .td.oopsLooksLikeYoureTryingToBreakTheLandSpeedRecordForCheckInsSlowAndSteadyWinsTheRace;
  static String get quickCheckInMessage5 =>
      TranslationController.td.easyThereSpeedRacerWereOnOfficeTimeNotWarpSpeedTime;
  static String get quickCheckInMessage6 => TranslationController
      .td.attentionTimeEnthusiastsRememberPatienceIsAVirtueGiveItAMomentToCatchUp;
  static String get quickCheckInMessage7 =>
      TranslationController.td.warningRapidCheckInsDetectedPleaseRefrainFromTimeHoppingAntics;
  static String get quickCheckInMessage8 =>
      TranslationController.td.looksLikeSomeonesEagerToGetGoingTakeAChillPillAndWaitASec;
  static String get quickCheckInMessage9 =>
      TranslationController.td.braceYourselfRapidCheckInsMayCauseTimeSpaceContinuumDisturbances;
  static String get quickCheckInMessage10 =>
      TranslationController.td.holdOnTightOurServersAreCatchingUpWithYourEnthusiasmForCheckIns;
  static List<String> quickCheckInMessages = [
    ErrorMessages.quickCheckInMessage1,
    ErrorMessages.quickCheckInMessage2,
    ErrorMessages.quickCheckInMessage3,
    ErrorMessages.quickCheckInMessage4,
    ErrorMessages.quickCheckInMessage5,
    ErrorMessages.quickCheckInMessage6,
    ErrorMessages.quickCheckInMessage7,
    ErrorMessages.quickCheckInMessage8,
    ErrorMessages.quickCheckInMessage9,
    ErrorMessages.quickCheckInMessage10
  ];
  static String get selectPartyTypeFirst => TranslationController.td.pleaseSelectPartyTypeFirst;
  static String get employeeSelfServiceCustomAppIsNotInstalledInBackend =>
      TranslationController.td.employeeSelfServiceCustomAppIsNotInstalledInBackend;

  static String get biometricAuthenticationEnabled =>
      TranslationController.td.biometricAuthenticationEnabled;
  static String get thankYouWeWillReachOutToYouShortly =>
      TranslationController.td.thankYouWeWillReachOutToYouShortly;
  static String get youHaveReachedYourFavoriteLimit6 =>
      TranslationController.td.youHaveReachedYourFavoriteLimit6;
  static String get documentActionListNotFound =>
      TranslationController.td.documentActionListNotFound;
  static String get notFound => TranslationController.td.notFound;
}
