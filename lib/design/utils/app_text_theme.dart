part of 'design_utils.dart';

class TextThemeX {
  TextThemeX._();
  factory TextThemeX() => _instance;
  static final TextThemeX _instance = TextThemeX._();

  static isRTL() => Directionality.of(Get.context!) == TextDirection.rtl;

  TextStyle get text14 => TextStyle(
        fontSize: 14,
        letterSpacing: -.24,
        overflow: defaultOverflow,
        height: isRTL() ? 1.2 : null,
        color: Get.context!.textTheme.bodyLarge?.color,
      ).medium;

  TextStyle get text16 => TextStyle(
        fontSize: 16,
        letterSpacing: -.24,
        overflow: defaultOverflow,
        height: isRTL() ? 1.2 : null,
        color: Get.context!.textTheme.bodyLarge?.color,
      ).medium;

  TextStyle get text18 => TextStyle(
        fontSize: 18,
        letterSpacing: -.24,
        overflow: defaultOverflow,
        height: isRTL() ? 1.2 : null,
        color: Get.context!.textTheme.bodyLarge?.color,
      ).medium;

  TextStyle get text24 => TextStyle(
        fontSize: 24,
        letterSpacing: -.24,
        overflow: defaultOverflow,
        height: isRTL() ? 1.2 : null,
        color: Get.context!.textTheme.bodyLarge?.color,
      ).medium;
}
