// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ess_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ESSThemeData _$ESSThemeDataFromJson(Map<String, dynamic> json) {
  return _ESSThemeData.fromJson(json);
}

/// @nodoc
mixin _$ESSThemeData {
  ESSThemeMode get themeMode => throw _privateConstructorUsedError;
  ESSThemeType? get darkTheme => throw _privateConstructorUsedError;
  ESSThemeType get lightTheme => throw _privateConstructorUsedError;

  /// Serializes this ESSThemeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ESSThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ESSThemeDataCopyWith<ESSThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ESSThemeDataCopyWith<$Res> {
  factory $ESSThemeDataCopyWith(
    ESSThemeData value,
    $Res Function(ESSThemeData) then,
  ) = _$ESSThemeDataCopyWithImpl<$Res, ESSThemeData>;
  @useResult
  $Res call({
    ESSThemeMode themeMode,
    ESSThemeType? darkTheme,
    ESSThemeType lightTheme,
  });
}

/// @nodoc
class _$ESSThemeDataCopyWithImpl<$Res, $Val extends ESSThemeData>
    implements $ESSThemeDataCopyWith<$Res> {
  _$ESSThemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ESSThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? darkTheme = freezed,
    Object? lightTheme = null,
  }) {
    return _then(
      _value.copyWith(
            themeMode:
                null == themeMode
                    ? _value.themeMode
                    : themeMode // ignore: cast_nullable_to_non_nullable
                        as ESSThemeMode,
            darkTheme:
                freezed == darkTheme
                    ? _value.darkTheme
                    : darkTheme // ignore: cast_nullable_to_non_nullable
                        as ESSThemeType?,
            lightTheme:
                null == lightTheme
                    ? _value.lightTheme
                    : lightTheme // ignore: cast_nullable_to_non_nullable
                        as ESSThemeType,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ESSThemeDataImplCopyWith<$Res>
    implements $ESSThemeDataCopyWith<$Res> {
  factory _$$ESSThemeDataImplCopyWith(
    _$ESSThemeDataImpl value,
    $Res Function(_$ESSThemeDataImpl) then,
  ) = __$$ESSThemeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ESSThemeMode themeMode,
    ESSThemeType? darkTheme,
    ESSThemeType lightTheme,
  });
}

/// @nodoc
class __$$ESSThemeDataImplCopyWithImpl<$Res>
    extends _$ESSThemeDataCopyWithImpl<$Res, _$ESSThemeDataImpl>
    implements _$$ESSThemeDataImplCopyWith<$Res> {
  __$$ESSThemeDataImplCopyWithImpl(
    _$ESSThemeDataImpl _value,
    $Res Function(_$ESSThemeDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ESSThemeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? darkTheme = freezed,
    Object? lightTheme = null,
  }) {
    return _then(
      _$ESSThemeDataImpl(
        themeMode:
            null == themeMode
                ? _value.themeMode
                : themeMode // ignore: cast_nullable_to_non_nullable
                    as ESSThemeMode,
        darkTheme:
            freezed == darkTheme
                ? _value.darkTheme
                : darkTheme // ignore: cast_nullable_to_non_nullable
                    as ESSThemeType?,
        lightTheme:
            null == lightTheme
                ? _value.lightTheme
                : lightTheme // ignore: cast_nullable_to_non_nullable
                    as ESSThemeType,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ESSThemeDataImpl implements _ESSThemeData {
  const _$ESSThemeDataImpl({
    this.themeMode = ESSThemeMode.light,
    this.darkTheme = ESSThemeType.dark,
    this.lightTheme = ESSThemeType.defaultTheme,
  });

  factory _$ESSThemeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ESSThemeDataImplFromJson(json);

  @override
  @JsonKey()
  final ESSThemeMode themeMode;
  @override
  @JsonKey()
  final ESSThemeType? darkTheme;
  @override
  @JsonKey()
  final ESSThemeType lightTheme;

  @override
  String toString() {
    return 'ESSThemeData(themeMode: $themeMode, darkTheme: $darkTheme, lightTheme: $lightTheme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ESSThemeDataImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.darkTheme, darkTheme) ||
                other.darkTheme == darkTheme) &&
            (identical(other.lightTheme, lightTheme) ||
                other.lightTheme == lightTheme));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, themeMode, darkTheme, lightTheme);

  /// Create a copy of ESSThemeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ESSThemeDataImplCopyWith<_$ESSThemeDataImpl> get copyWith =>
      __$$ESSThemeDataImplCopyWithImpl<_$ESSThemeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ESSThemeDataImplToJson(this);
  }
}

abstract class _ESSThemeData implements ESSThemeData {
  const factory _ESSThemeData({
    final ESSThemeMode themeMode,
    final ESSThemeType? darkTheme,
    final ESSThemeType lightTheme,
  }) = _$ESSThemeDataImpl;

  factory _ESSThemeData.fromJson(Map<String, dynamic> json) =
      _$ESSThemeDataImpl.fromJson;

  @override
  ESSThemeMode get themeMode;
  @override
  ESSThemeType? get darkTheme;
  @override
  ESSThemeType get lightTheme;

  /// Create a copy of ESSThemeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ESSThemeDataImplCopyWith<_$ESSThemeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
