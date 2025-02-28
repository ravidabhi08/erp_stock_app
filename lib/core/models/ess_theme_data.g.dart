// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ess_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ESSThemeDataImpl _$$ESSThemeDataImplFromJson(Map<String, dynamic> json) =>
    _$ESSThemeDataImpl(
      themeMode:
          $enumDecodeNullable(_$ESSThemeModeEnumMap, json['theme_mode']) ??
          ESSThemeMode.light,
      darkTheme:
          $enumDecodeNullable(_$ESSThemeTypeEnumMap, json['dark_theme']) ??
          ESSThemeType.dark,
      lightTheme:
          $enumDecodeNullable(_$ESSThemeTypeEnumMap, json['light_theme']) ??
          ESSThemeType.defaultTheme,
    );

Map<String, dynamic> _$$ESSThemeDataImplToJson(_$ESSThemeDataImpl instance) =>
    <String, dynamic>{
      'theme_mode': instance.themeMode.toJson(),
      'dark_theme': instance.darkTheme?.toJson(),
      'light_theme': instance.lightTheme.toJson(),
    };

const _$ESSThemeModeEnumMap = {
  ESSThemeMode.light: 'Light',
  ESSThemeMode.dark: 'Dark',
  ESSThemeMode.auto: 'Auto',
  ESSThemeMode.system: 'System',
};

const _$ESSThemeTypeEnumMap = {
  ESSThemeType.defaultTheme: 'Default',
  ESSThemeType.dark: 'Dark',
  ESSThemeType.retro: 'Retro',
  ESSThemeType.dracula: 'Dracula',
  ESSThemeType.synthwave: 'Synthwave',
  ESSThemeType.lemonade: 'Lemonade',
  ESSThemeType.wireframe: 'Wireframe',
  ESSThemeType.cyberpunk: 'Cyberpunk',
};
