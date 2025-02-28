import 'package:freezed_annotation/freezed_annotation.dart';

import '../../src/utils/app_theme.dart';


part 'ess_theme_data.freezed.dart';
part 'ess_theme_data.g.dart';

@JsonEnum(alwaysCreate: true)
enum ESSThemeMode {
  @JsonValue("Light")
  light,
  @JsonValue("Dark")
  dark,
  @JsonValue("Auto")
  auto,
  @JsonValue("System")
  system;

  String toJson() => _$ESSThemeModeEnumMap[this]!;
}

@freezed
class ESSThemeData with _$ESSThemeData {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ESSThemeData({
    @Default(ESSThemeMode.light) ESSThemeMode themeMode,
    @Default(ESSThemeType.dark) ESSThemeType? darkTheme,
    @Default(ESSThemeType.defaultTheme) ESSThemeType lightTheme,
  }) = _ESSThemeData;

  factory ESSThemeData.fromJson(Map<String, dynamic> json) => _$ESSThemeDataFromJson(json);
}
