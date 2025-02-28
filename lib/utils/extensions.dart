import 'dart:math' as math;

import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart' as dio;
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

import '../core/utils/core_constants.dart';
import '../design/components/ess_components.dart';
import '../design/utils/design_utils.dart';

part 'extensions.freezed.dart';

extension BuildContextExtension on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);

  TextTheme get tt => Theme.of(this).textTheme;

  ColorScheme get cs => Theme.of(this).colorScheme;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  double get topPadding => math.max(statusBarHeight + 15, 15);

  double get bottomPadding => math.max(bottomSafeHeight + 15, 15);

  double get statusBarHeight => MediaQuery.of(this).viewPadding.top;

  double get bottomSafeHeight => MediaQuery.of(this).viewPadding.bottom;

  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;
}

extension WidgetExtension on Widget {
  Widget get hardcodedWidget => this;

  Widget defaultShimmer({double? height, double? width, bool isEnabled = false}) => SizedBox(
    width: width,
    height: height,
    child: Shimmer.fromColors(
      enabled: isEnabled,
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: this,
    ),
  );

  Widget get defaultHorizontal =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: this);

  Container defaultContainer({
    double hP = 16,
    double vP = 16,
    double vM = 0,
    BoxBorder? border,
    Color? backgroundColor,
    bool showShadow = true,
    double hM = 16,
    double borderRadius = defaultBorderRadius,
  }) => Container(
    decoration: BoxDecoration(
      border: border,
      color: backgroundColor ?? Get.context!.colorScheme.surface,
      boxShadow: showShadow ? containerShadow : null,
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    padding: EdgeInsets.symmetric(horizontal: hP, vertical: vP),
    margin: EdgeInsets.symmetric(horizontal: hM, vertical: vM),
    child: this,
  );

  Widget setGradient() => ShaderMask(
    blendMode: BlendMode.srcIn,
    shaderCallback:
        (bounds) => LinearGradient(
          colors: [Get.context!.gradient1, Get.context!.gradient2],
        ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
    child: this,
  );

  Widget disableWidget({bool isDisabled = false, bool keepColor = false}) {
    return IgnorePointer(
      ignoring: isDisabled,
      child: ColorFiltered(
        colorFilter:
            isDisabled && !keepColor
                ? const ColorFilter.matrix(<double>[
                  0.2126,
                  0.7152,
                  0.0722,
                  0,
                  0,
                  0.2126,
                  0.7152,
                  0.0722,
                  0,
                  0,
                  0.2126,
                  0.7152,
                  0.0722,
                  0,
                  0,
                  0,
                  0,
                  0,
                  1,
                  0,
                ])
                : const ColorFilter.matrix(<double>[
                  1,
                  0,
                  0,
                  0,
                  0,
                  0,
                  1,
                  0,
                  0,
                  0,
                  0,
                  0,
                  1,
                  0,
                  0,
                  0,
                  0,
                  0,
                  1,
                  0,
                ]),
        child: this,
      ),
    );
  }

  Widget showShimmer() {
    return Shimmer.fromColors(
      baseColor: Get.context!.colorScheme.surface,
      highlightColor: Colors.grey.shade200,
      child: this,
    );
  }

  // TODO: enhance the animation
  Widget listAnimation({
    required int position,
    double? verticalOffset,
    double? horizontalOffset,
    Duration? delay = const Duration(milliseconds: 0),
  }) {
    return AnimationConfiguration.staggeredList(
      position: position,
      child: FadeInAnimation(
        delay: delay,
        duration: 400.ms,
        curve: Curves.decelerate,
        child: SlideAnimation(
          delay: delay,
          duration: 400.ms,
          curve: Curves.decelerate,
          horizontalOffset: horizontalOffset,
          verticalOffset: verticalOffset ?? -40,
          child: this,
        ),
      ),
    );
  }
}

extension StringExtension on String {
  /// If String is not localized, then it should be marked with [hardcoded].
  /// So, later on they will be easy to find and can be replaced with the localized string
  /// Examples: <br/>
  /// 'Hello World'.hardcode <br/>
  String get hardcoded => this;

  /// replace space and special characters with underscore and return string
  String toUnderscore() => replaceAll(RegExp(r'[\W]+'), '_');

  String getInitials() {
    int numWords = 2;
    String initials = "";
    List<String> names = split(" ");

    if (names.length < numWords) {
      numWords = names.length;
    }
    for (var i = 0; i < numWords; i++) {
      initials += names[i] != '' ? names[i][0].toUpperCase() : "";
    }
    return initials;
  }

  /// Supported String: dd-MM-yyyy
  int get getYear => int.tryParse(split('-')[2]) ?? DateTime.now().year;

  /// Supported String: dd-MM-yyyy
  int get getMonth => int.tryParse(split('-')[1]) ?? DateTime.now().month;

  /// Supported String: dd-MM-yyyy
  int get getDay => int.tryParse(split('-')[0]) ?? DateTime.now().day;

  dynamic errorSnackbar({void Function(GetSnackBar)? onTap}) {
    final colors = Get.context?.appColors.snackbarTypeColors.error;

    Get
      ..closeAllSnackbars()
      ..rawSnackbar(
        onTap: onTap,
        borderRadius: 16,
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 4),
        borderColor: colors?.borderColor,
        backgroundColor: colors?.backgroundColor ?? Colors.transparent,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        icon: CircleAvatar(
          radius: 12,
          backgroundColor: colors?.borderColor,
          child: SvgPicture.asset(AppSnackbarIcons.error),
        ),
        messageText: CText(
          this,
          overflow: TextOverflow.visible,
          style: TextThemeX().text14.copyWith(letterSpacing: 0, color: colors?.textColor),
        ),
      );
  }

  dynamic successSnackbar({void Function(GetSnackBar)? onTap}) {
    final colors = Get.context?.appColors.snackbarTypeColors.success;

    Get
      ..closeAllSnackbars()
      ..rawSnackbar(
        onTap: onTap,
        borderRadius: 16,
        snackPosition: SnackPosition.TOP,
        borderColor: colors?.borderColor,
        backgroundColor: colors?.backgroundColor ?? Colors.transparent,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        icon: CircleAvatar(
          radius: 12,
          backgroundColor: colors?.borderColor,
          child: SvgPicture.asset(AppSnackbarIcons.success),
        ),
        messageText: CText(
          this,
          overflow: TextOverflow.visible,
          style: TextThemeX().text14.copyWith(letterSpacing: 0, color: colors?.textColor),
        ),
      );
  }

  dynamic infoSnackbar({void Function(GetSnackBar)? onTap}) {
    final colors = Get.context?.appColors.snackbarTypeColors.info;

    Get
      ..closeAllSnackbars()
      ..rawSnackbar(
        onTap: onTap,
        borderRadius: 16,
        snackPosition: SnackPosition.TOP,
        borderColor: colors?.borderColor,
        backgroundColor: colors?.backgroundColor ?? Colors.transparent,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        icon: CircleAvatar(
          radius: 12,
          backgroundColor: colors?.borderColor,
          child: SvgPicture.asset(AppSnackbarIcons.info),
        ),
        messageText: CText(
          this,
          overflow: TextOverflow.visible,
          style: TextThemeX().text14.copyWith(letterSpacing: 0, color: colors?.textColor),
        ),
      );
  }

  bool isImage() {
    if (isNullEmptyOrFalse(this)) return false;

    final String ext = toLowerCase();

    return ext.endsWith(".jpg") ||
        ext.endsWith(".jpeg") ||
        ext.endsWith(".png") ||
        ext.endsWith(".gif") ||
        ext.endsWith(".bmp") ||
        ext.endsWith(".jfif") ||
        ext.endsWith(".heic");
  }

  /// Supported String: dd-MM-yyyy
  /// dd-MM-yyyy => yyyy-MM-dd
  DateTime getDateFromFormat() {
    final date = split('-');
    return DateTime(
      int.tryParse(date[2]) ?? DateTime.now().year,
      int.tryParse(date[1]) ?? DateTime.now().month,
      int.tryParse(date[0]) ?? DateTime.now().day,
    );
  }

  ({DateTime? dateTime, String? format})? parseDateTimePattern() {
    final List<DateFormat> possibleFormats = [
      DateFormat('EEE, dd MMM yyyy HH:mm:ss Z'),
      DateFormat('EEE, dd-MMM-yyyy HH:mm:ss Z'),
    ];

    for (final format in possibleFormats) {
      try {
        final dateTime = format.parse(this);
        return (dateTime: dateTime, format: format.pattern);
      } catch (_) {
        continue;
      }
    }
    return null;
  }
}

extension DateTimeE7n on DateTime {
  /// yyyy-MM-dd
  String get getDefaultDateFormat => DateFormat('yyyy-MM-dd').format(this);

  /// yyyy-MM-dd hh:mm a
  String get getDefaultDateTimeFormat => DateFormat('yyyy-MM-dd').add_jm().format(this);
}

extension ResponseE7n on dio.Response {
  bool get isSuccess => statusCode! >= 200 || statusCode! < 300;
}

extension ColorX on Color {
  /// If color is not being used from the theme, then it should be marked with [hardcodedColor].
  /// So, later on they will be easy to find and can be replaced with the theme color
  ///
  /// Examples: <br/>
  /// Colors.red.hardcodedColor <br/>
  /// Color(0x3300498a).hardcodedColor
  Color get hardcodedColor => this;
}

@Freezed(fromJson: false, toJson: false)
class SnackbarColor with _$SnackbarColor {
  const factory SnackbarColor({
    required Color textColor,
    required Color borderColor,

    /// Used for background color as well as icon color
    required Color backgroundColor,
  }) = _SnackbarColor;
}
