// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../design/components/text_indicator.dart';
import '../../utils/extensions.dart';

part 'app_theme.freezed.dart';
part 'app_theme.g.dart';

@JsonEnum(alwaysCreate: true)
enum ESSThemeType {
  @JsonValue("Default")
  defaultTheme,
  @JsonValue("Dark")
  dark,
  @JsonValue("Retro")
  retro,
  @JsonValue("Dracula")
  dracula,
  @JsonValue("Synthwave")
  synthwave,
  @JsonValue("Lemonade")
  lemonade,
  @JsonValue("Wireframe")
  wireframe,
  @JsonValue("Cyberpunk")
  cyberpunk;

  String toJson() => _$ESSThemeTypeEnumMap[this]!;

  static List<ESSThemeType> get lightThemes {
    return ESSThemeType.values.where((e) => e.theme.brightness == Brightness.light).toList();
  }

  static List<ESSThemeType> get darkThemes {
    return ESSThemeType.values.where((e) => e.theme.brightness == Brightness.dark).toList();
  }
}

extension ESSThemeTypeX on ESSThemeType {
  ESSTheme get theme {
    return switch (this) {
      ESSThemeType.dark => ESSTheme._dark,
      ESSThemeType.retro => ESSTheme._retro,
      ESSThemeType.dracula => ESSTheme._dracula,
      ESSThemeType.lemonade => ESSTheme._lemonade,
      ESSThemeType.synthwave => ESSTheme._synthwave,
      ESSThemeType.wireframe => ESSTheme._wireframe,
      ESSThemeType.cyberpunk => ESSTheme._cyberTech,
      ESSThemeType.defaultTheme => ESSTheme._defaultTheme,
    };
  }
}

@freezed
class ESSTheme with _$ESSTheme {
  const factory ESSTheme._({
    required Color primary,
    required Color divider,
    required Color surface,
    required Color onSurface,
    required Color onPrimary,
    required Color background,
    required ESSThemeType type,
    required Color primaryText,
    // TODO: actually it's an onSurface because onBackground mostly used on surface
    required Color onBackground,
    required AppColors appColors,
    required Brightness brightness,
    required Color onError,
    required Color error,
    required String fontFamily,
  }) = _ESSTheme;

  static const _defaultFontFamily = 'Poppins'; // RTL, LTR
  static const _defaultOnError = Colors.white;
  static const _defaultError = Color(0xffFF576B);
  static const _defaultShadow = Color(0xFF00498A);
  static const _greenColor = Color(0xff47B990);
  static const _redColor = Color(0xffFF576B);
  static const _orangeColor = Color(0xffFF971D);
  static const _purpleColor = Color(0xff9F61EF);
  static const _greyColor = Color(0xff8CA9C2);
  static const _greenLight = Color(0xffE1F5F1);
  static const _redLight = Color(0xffFFE8E8);
  static const _orangeLight = Color(0xffffe0bb);

  static const _defaultSnackbarTypeColors = SnackbarTypeColors(
    info: SnackbarColor(
      textColor: Color(0xff04002E),
      borderColor: Color(0xff2475EF),
      backgroundColor: Color(0xFFEBF3FF),
    ),
    error: SnackbarColor(
      textColor: Color(0xff04002E),
      borderColor: Color(0xffFF576B),
      backgroundColor: Color(0xFFFFEFEF),
    ),
    success: SnackbarColor(
      textColor: Color(0xff04002E),
      borderColor: Color(0xff47B990),
      backgroundColor: Color(0xFFE6F5EC),
    ),
  );

  static ESSTheme get _defaultTheme {
    return const ESSTheme._(
      type: ESSThemeType.defaultTheme,
      brightness: Brightness.light,
      error: _defaultError,
      onError: _defaultOnError,
      fontFamily: _defaultFontFamily,
      primary: Color(0xff2475EF),
      surface: Colors.white,
      onPrimary: Colors.white,
      onSurface: Color(0xff04002E),
      background: Color(0xffF4F7FB),
      onBackground: Color(0xff8CA9C2),
      primaryText: Color(0xff04002E),
      divider: Color(0xffD1DDE8),
      appColors: AppColors(
        orangeLight: _orangeLight,
        redLight: _redLight,
        greenLight: _greenLight,
        red: _redColor,
        gray: _greyColor,
        green: _greenColor,
        orange: _orangeColor,
        purple: _purpleColor,
        shadowColor: _defaultShadow,
        iconColor: Color(0xff4B6F8E),
        gradient1: Color(0xff77ADFF),
        gradient2: Color(0xff1673FF),
        strokeColor: Color(0xffE5EAF1),
        secondaryText: Color(0xff150051),
        snackbarTypeColors: _defaultSnackbarTypeColors,
      ),
    );
  }

  static ESSTheme get _dark {
    return const ESSTheme._(
      type: ESSThemeType.dark,
      brightness: Brightness.dark,
      error: _defaultError,
      onError: _defaultOnError,
      fontFamily: _defaultFontFamily,
      primary: Color(0xff2475EF),
      onPrimary: Colors.white,
      surface: Color(0xff1D222B),
      onSurface: Colors.white,
      background: Color(0xff040717),
      onBackground: Color(0xffA4ADBA),
      primaryText: Colors.white,
      divider: Color(0xffD1DDE8),
      appColors: AppColors(
        orangeLight: Color(0xB5AA6734),
        redLight: Color(0xB5AA6734),
        greenLight: Color(0x853BB161),
        red: _redColor,
        gray: _greyColor,
        green: _greenColor,
        orange: _orangeColor,
        purple: _purpleColor,
        shadowColor: _defaultShadow,
        iconColor: Color(0xffA4ADBA), // onBackground
        gradient1: Color(0xff00C0FF),
        gradient2: Color(0xff4071FF),
        strokeColor: Color(0xffD1DDE8), // Divider
        secondaryText: Color(0xff848A96),
        snackbarTypeColors: _defaultSnackbarTypeColors,
      ),
    );
  }

  static ESSTheme get _dracula {
    return const ESSTheme._(
      type: ESSThemeType.dracula,
      brightness: Brightness.dark,
      error: _defaultError,
      onError: _defaultOnError,
      fontFamily: _defaultFontFamily,
      primary: Color(0xffBC92F8),
      onPrimary: Color(0xff0D0914),
      surface: Color(0xff1F212A),
      onSurface: Color(0xffF8F8F2),
      background: Color(0xff151415),
      onBackground: Color.fromARGB(255, 124, 115, 137),
      primaryText: Color(0xffF8F8F2),
      divider: Color.fromARGB(98, 209, 221, 232),
      appColors: AppColors(
        orangeLight: Color(0x89FC9546), // ARGB (137, 252, 149, 70)
        redLight: Color(0x86F97C7C), // ARGB (134, 249, 124, 124)
        greenLight: Color(0xFF668455), // ARGB (255, 102, 132, 85)
        red: _redColor,
        gray: _greyColor,
        green: _greenColor,
        orange: _orangeColor,
        purple: _purpleColor,
        shadowColor: _defaultShadow,
        gradient1: Color(0xffBC92F8),
        gradient2: Color(0xffFF78C6),
        secondaryText: Color(0xffD5D6DA),
        iconColor: Color.fromARGB(255, 124, 115, 137), // onBackground
        strokeColor: Color.fromARGB(98, 209, 221, 232), // Divider
        snackbarTypeColors: _defaultSnackbarTypeColors,
      ),
    );
  }

  static ESSTheme get _synthwave {
    return const ESSTheme._(
      type: ESSThemeType.dracula,
      brightness: Brightness.dark,
      error: _defaultError,
      onError: _defaultOnError,
      fontFamily: _defaultFontFamily,
      primary: Colors.white,
      onPrimary: Color(0xff0D0914),
      surface: Color(0xff1A113C),
      onSurface: Color(0xffF8F8F2),
      background: Color(0xff140B30),
      onBackground: Color.fromARGB(255, 140, 132, 152),
      primaryText: Color(0xffF8F8F2),
      divider: Color.fromARGB(98, 209, 221, 232),
      appColors: AppColors(
        orangeLight: Color(0xBEF39D5B), // ARGB (190, 243, 157, 91)
        redLight: Color(0xDBC6586D), // ARGB (219, 206, 88, 109)
        greenLight: Color(0xff089592),
        red: _redColor,
        gray: _greyColor,
        green: _greenColor,
        orange: _orangeColor,
        purple: _purpleColor,
        shadowColor: _defaultShadow,
        gradient1: Color(0xff01CDB7),
        gradient2: Color(0xff56C7F2),
        secondaryText: Color(0xffD0D1D0),
        strokeColor: Color.fromARGB(98, 209, 221, 232), // Divider
        iconColor: Color.fromARGB(255, 140, 132, 152), // onBackground
        snackbarTypeColors: _defaultSnackbarTypeColors,
      ),
    );
  }

  static ESSTheme get _lemonade {
    return const ESSTheme._(
      brightness: Brightness.light,
      type: ESSThemeType.lemonade,
      error: _defaultError,
      onError: _defaultOnError,
      fontFamily: _defaultFontFamily,
      primary: Color(0xff429400),
      onPrimary: Colors.white,
      surface: Color(0xffF8FDEF),
      onSurface: Color(0xff010100),
      background: Color.fromARGB(255, 238, 251, 216),
      onBackground: Color(0xffB3B6AA),
      primaryText: Color(0xff010100),
      divider: Color(0xffD1DDE8),
      appColors: AppColors(
        orangeLight: Color(0xC0FED4A0), // ARGB (192, 254, 212, 160)
        redLight: Color(0xffFADFD9),
        greenLight: Color(0xFFE3F9C9), // ARGB (255, 227, 249, 201)
        red: _redColor,
        gray: _greyColor,
        green: _greenColor,
        orange: _orangeColor,
        purple: _purpleColor,
        shadowColor: _defaultShadow,
        iconColor: Color(0xffB3B6AA), // onBackground
        gradient1: Color(0xff429400),
        gradient2: Color(0xffBDC000),
        strokeColor: Color(0xffD1DDE8), // Divider
        secondaryText: Color(0xff151614),
        snackbarTypeColors: _defaultSnackbarTypeColors,
      ),
    );
  }

  static ESSTheme get _retro {
    const primaryColor = Color.fromARGB(255, 125, 103, 35);
    return const ESSTheme._(
      brightness: Brightness.light,
      type: ESSThemeType.retro,
      error: _defaultError,
      onError: _defaultOnError,
      fontFamily: _defaultFontFamily,
      primary: primaryColor,
      onPrimary: Colors.white,
      surface: Color(0xffEAE2CB),
      onSurface: Color(0xff010100),
      background: Color(0xffE5D7B5),
      onBackground: Color.fromARGB(255, 177, 155, 136),
      primaryText: Color(0xff282524),
      divider: Color.fromARGB(255, 191, 172, 126),
      appColors: AppColors(
        orangeLight: Color(0xEAFACA93), // ARGB (234, 250, 202, 147)
        redLight: Color(0xFFF5C9B9), // ARGB (255, 245, 201, 185)
        greenLight: Color(0x8B79D894), // ARGB (139, 121, 216, 148)
        red: _redColor,
        gray: _greyColor,
        green: _greenColor,
        orange: _orangeColor,
        purple: _purpleColor,
        gradient1: primaryColor,
        shadowColor: _defaultShadow,
        gradient2: Color(0xffEDAE3B),
        secondaryText: Color(0xff282524),
        iconColor: Color.fromARGB(255, 177, 155, 136), // onBackground
        strokeColor: Color.fromARGB(255, 191, 172, 126), // Divider
        snackbarTypeColors: _defaultSnackbarTypeColors,
      ),
    );
  }

  static ESSTheme get _wireframe {
    return const ESSTheme._(
      brightness: Brightness.light,
      type: ESSThemeType.wireframe,
      error: _defaultError,
      onError: _defaultOnError,
      fontFamily: _defaultFontFamily,
      primary: Color(0xff0D0C0C),
      onPrimary: Colors.white,
      surface: Colors.white,
      onSurface: Color(0xff010100),
      background: Color(0xffEAEAEB),
      onBackground: Color(0xff7D8E9A),
      primaryText: Color(0xff010100),
      divider: Color(0xffD1DDE8),
      appColors: AppColors(
        orangeLight: Color(0xFFFAD5A8), // ARGB (255, 250, 213, 168)
        redLight: Color(0xFFFCE1E1), // ARGB (255, 252, 225, 225)
        greenLight: Color(0xFFDAFCF5), // ARGB (255, 218, 252, 245)
        red: _redColor,
        gray: _greyColor,
        green: _greenColor,
        orange: _orangeColor,
        purple: _purpleColor,
        shadowColor: _defaultShadow,
        iconColor: Color(0xff7D8E9A), // onBackground
        gradient1: Color(0xff0D0C0C),
        gradient2: Color(0xff0D0C0C),
        strokeColor: Color(0xffD1DDE8), // Divider
        secondaryText: Color(0xff131212),
        snackbarTypeColors: _defaultSnackbarTypeColors,
      ),
    );
  }

  static ESSTheme get _cyberTech {
    return const ESSTheme._(
      brightness: Brightness.dark, // Dark cyberpunk aesthetic
      type: ESSThemeType.cyberpunk,
      primary: Color(0xFF00A8E8), // Electric Blue for futuristic appeal
      onPrimary: Colors.black, // Contrast text on primary
      surface: Color(0xFF1B1B2F), // Dark futuristic surface
      onSurface: Color(0xFF00E676), // Neon Green for contrast text/icons
      primaryText: Color(0xFFFFFFFF), // Electric Blue for text
      background: Color(0xFF121212), // Deep black background
      onBackground: Color(0xFFFFD700), // Golden Yellow for text on black
      fontFamily: _defaultFontFamily,
      error: Color(0xFFFF1744), // Neon Red for errors
      onError: Colors.white,
      divider: Color(0xFF6C63FF), // Vibrant Neon Purple divider
      appColors: AppColors(
        gradient1: Color(0xFF6C63FF), // Neon Purple
        gradient2: Color(0xFF00E676), // Neon Green
        secondaryText: Color(0xFF00A8E8), // Electric Blue for secondary text
        orangeLight: Color(0xFFFFC107), // Cyber Gold
        redLight: Color(0xFFFF1744), // Neon Red
        greenLight: Color(0xFF00E676), // Bright Neon Green
        red: Color(0xFFFF3131), // Cyberpunk Red
        gray: Color(0xFF6D6D6D), // Neutral Gray
        green: Color(0xFF00E676), // Neon Green
        orange: Color(0xFFFFA500), // Neon Orange
        purple: Color(0xFF6C63FF), // Electric Purple
        shadowColor: Color(0x8000A8E8), // Electric Blue Glow
        iconColor: Color(0xFF00E676), // Neon Green for icons
        strokeColor: Color(0xFF6C63FF), // Neon Purple for strokes
        snackbarTypeColors: _defaultSnackbarTypeColors,
      ),
    );
  }
}

extension ESSThemeX on ESSTheme {
  ThemeData toThemeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      primaryColor: primary,
      fontFamily: fontFamily,
      brightness: brightness,
      indicatorColor: primary,
      hintColor: onBackground,
      scaffoldBackgroundColor: background,
      iconTheme: IconThemeData(color: appColors.iconColor),
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        primary: primary,
        onPrimary: onPrimary,
        surface: surface,
        onSurface: onSurface,
        background: background,
        onBackground: onBackground,
        error: error,
        onError: onError,
        outline: onBackground,
        brightness: brightness,
      ),
      dividerColor: divider,
      extensions: <ThemeExtension>[appColors],
      dividerTheme: DividerThemeData(thickness: 1, color: divider),
      textTheme: Theme.of(
        context,
      ).textTheme.apply(bodyColor: primaryText, fontFamily: fontFamily, displayColor: primaryText),
      inputDecorationTheme: InputDecorationTheme(
        //   filled: true,
        //   alignLabelWithHint: true,
        //   fillColor: onPrimary,
        //   prefixIconColor: onBackground,
        hintStyle: TextStyle(color: onBackground, fontSize: 14),
        //   contentPadding: const EdgeInsets.all(16),
        //   border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16),
        //     borderSide: const BorderSide(color: Color(0xAB2490EF)),
        //   ),
        //   focusedBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16),
        //     borderSide: const BorderSide(color: Color(0xAB2490EF)),
        //   ),
        //   disabledBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16),
        //     borderSide: const BorderSide(color: Color(0xAB8CA9C2)),
        //   ),
        //   enabledBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16),
        //     borderSide: BorderSide(color: onBackground),
        //   ),
        //   focusedErrorBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16),
        //     borderSide: const BorderSide(color: Color(0xffC32033)),
        //   ),
        //   errorBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(40),
        //     borderSide: const BorderSide(color: Color(0x80C32033)),
        //   ),
      ),
      textSelectionTheme: TextSelectionThemeData(cursorColor: primary),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: onPrimary,
          minimumSize: const Size(100, 50),
          side: BorderSide(color: onBackground),
        ),
      ),
      appBarTheme: AppBarTheme(
        titleSpacing: 0,
        centerTitle: false,
        backgroundColor: surface,
        scrolledUnderElevation: 0,
        titleTextStyle:
            TextStyle(
              fontSize: 16,
              color: primaryText,
              letterSpacing: -0.24,
              fontFamily: fontFamily,
            ).semiBold,
      ),
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return primary;
          }
          return background;
        }),
        thumbColor: MaterialStateProperty.all<Color>(onPrimary),
        trackOutlineColor: MaterialStateProperty.all<Color>(Colors.transparent),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        showDragHandle: true,
        backgroundColor: background,
        surfaceTintColor: background,
        dragHandleSize: const Size(80, 6),
        dragHandleColor: appColors.strokeColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
      ),
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
        primaryColor: primary,
        barBackgroundColor: background,
        scaffoldBackgroundColor: background,
        textTheme: CupertinoTextThemeData(
          primaryColor: primary,
          textStyle: TextStyle(fontSize: 14, color: primaryText, fontFamily: fontFamily),
        ),
      ),
      radioTheme: RadioThemeData(
        visualDensity: VisualDensity.compact,
        fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return primary;
          }
          return onBackground;
        }),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: primaryText,
        labelPadding: EdgeInsets.zero,
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelColor: appColors.iconColor,
      ),
      listTileTheme: ListTileThemeData(
        dense: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(width: 1, color: appColors.strokeColor),
        ),
      ),
    );
  }
}

@immutable
class AppColors extends ThemeExtension<AppColors> {
  /// Used along with gradient2 for dashboard Leave Balance Card
  final Color gradient1;

  /// Used along with gradient1 for dashboard Leave Balance Card
  final Color gradient2;

  /// Generally used for selection sheet item
  final Color secondaryText;

  /// Used for SVG icons
  final Color iconColor;

  // Used for [Divider], [Borders]
  final Color strokeColor;

  /// Used for [Snackbar] defined in lib/utils/extensions.dart
  final SnackbarTypeColors snackbarTypeColors;

  /// Used for [Container], [FAB], [NavBar] drop shadow
  final Color shadowColor;

  /// Used for [TextIndicator], [Badges], [Icons], [Snackbar] widget
  final Color green;
  final Color red;
  final Color orange;
  final Color purple;
  final Color gray;
  final Color greenLight;
  final Color redLight;
  final Color orangeLight;

  const AppColors({
    required this.redLight,
    required this.greenLight,
    required this.orangeLight,
    required this.iconColor,
    required this.gradient1,
    required this.gradient2,
    required this.green,
    required this.red,
    required this.orange,
    required this.purple,
    required this.gray,
    required this.strokeColor,
    required this.shadowColor,
    required this.secondaryText,
    required this.snackbarTypeColors,
  });

  @override
  AppColors copyWith() {
    return AppColors(
      orangeLight: orangeLight,
      redLight: redLight,
      greenLight: greenLight,
      iconColor: iconColor,
      gradient1: gradient1,
      gradient2: gradient2,
      red: red,
      gray: gray,
      green: green,
      orange: orange,
      purple: purple,
      shadowColor: shadowColor,
      strokeColor: strokeColor,
      secondaryText: secondaryText,
      snackbarTypeColors: snackbarTypeColors,
    );
  }

  @override
  AppColors lerp(AppColors? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      orangeLight: orangeLight,
      redLight: redLight,
      greenLight: greenLight,
      iconColor: iconColor,
      gradient1: gradient1,
      gradient2: gradient2,
      red: red,
      gray: gray,
      green: green,
      orange: orange,
      purple: purple,
      shadowColor: shadowColor,
      strokeColor: strokeColor,
      secondaryText: secondaryText,
      snackbarTypeColors: snackbarTypeColors,
    );
  }

  @override
  String toString() {
    return 'AppColors(gradient1: $gradient1, gradient2: $gradient2, secondaryText: $secondaryText, iconColor: $iconColor, strokeColor: $strokeColor, shadowColor: $shadowColor, green: $green, red: $red, orange: $orange, purple: $purple, gray: $gray)';
  }
}

@Freezed(fromJson: false, toJson: false)
class TextIndicatorColors with _$TextIndicatorColors {
  const factory TextIndicatorColors({
    TextIndicatorColor? red,
    TextIndicatorColor? green,
    TextIndicatorColor? orange,
    TextIndicatorColor? purple,
    required TextIndicatorColor grey,
  }) = _TextIndicatorColors;
}

@Freezed(fromJson: false, toJson: false)
class SnackbarTypeColors with _$SnackbarTypeColors {
  const factory SnackbarTypeColors({
    required SnackbarColor info,
    required SnackbarColor error,
    required SnackbarColor success,
  }) = _SnackbarTypeColors;
}

extension ColorX on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  AppColors get appColors => theme.extension<AppColors>()!;

  Color get gradient1 => theme.extension<AppColors>()!.gradient1;
  Color get gradient2 => theme.extension<AppColors>()!.gradient2;
  Color get secondaryText => theme.extension<AppColors>()!.secondaryText;
}

extension TextStyleE7n on TextStyle {
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
}
