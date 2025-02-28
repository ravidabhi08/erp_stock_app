// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extensions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SnackbarColor {
  Color get textColor => throw _privateConstructorUsedError;
  Color get borderColor => throw _privateConstructorUsedError;

  /// Used for background color as well as icon color
  Color get backgroundColor => throw _privateConstructorUsedError;

  /// Create a copy of SnackbarColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnackbarColorCopyWith<SnackbarColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackbarColorCopyWith<$Res> {
  factory $SnackbarColorCopyWith(
    SnackbarColor value,
    $Res Function(SnackbarColor) then,
  ) = _$SnackbarColorCopyWithImpl<$Res, SnackbarColor>;
  @useResult
  $Res call({Color textColor, Color borderColor, Color backgroundColor});
}

/// @nodoc
class _$SnackbarColorCopyWithImpl<$Res, $Val extends SnackbarColor>
    implements $SnackbarColorCopyWith<$Res> {
  _$SnackbarColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnackbarColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textColor = null,
    Object? borderColor = null,
    Object? backgroundColor = null,
  }) {
    return _then(
      _value.copyWith(
            textColor:
                null == textColor
                    ? _value.textColor
                    : textColor // ignore: cast_nullable_to_non_nullable
                        as Color,
            borderColor:
                null == borderColor
                    ? _value.borderColor
                    : borderColor // ignore: cast_nullable_to_non_nullable
                        as Color,
            backgroundColor:
                null == backgroundColor
                    ? _value.backgroundColor
                    : backgroundColor // ignore: cast_nullable_to_non_nullable
                        as Color,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SnackbarColorImplCopyWith<$Res>
    implements $SnackbarColorCopyWith<$Res> {
  factory _$$SnackbarColorImplCopyWith(
    _$SnackbarColorImpl value,
    $Res Function(_$SnackbarColorImpl) then,
  ) = __$$SnackbarColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color textColor, Color borderColor, Color backgroundColor});
}

/// @nodoc
class __$$SnackbarColorImplCopyWithImpl<$Res>
    extends _$SnackbarColorCopyWithImpl<$Res, _$SnackbarColorImpl>
    implements _$$SnackbarColorImplCopyWith<$Res> {
  __$$SnackbarColorImplCopyWithImpl(
    _$SnackbarColorImpl _value,
    $Res Function(_$SnackbarColorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SnackbarColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textColor = null,
    Object? borderColor = null,
    Object? backgroundColor = null,
  }) {
    return _then(
      _$SnackbarColorImpl(
        textColor:
            null == textColor
                ? _value.textColor
                : textColor // ignore: cast_nullable_to_non_nullable
                    as Color,
        borderColor:
            null == borderColor
                ? _value.borderColor
                : borderColor // ignore: cast_nullable_to_non_nullable
                    as Color,
        backgroundColor:
            null == backgroundColor
                ? _value.backgroundColor
                : backgroundColor // ignore: cast_nullable_to_non_nullable
                    as Color,
      ),
    );
  }
}

/// @nodoc

class _$SnackbarColorImpl implements _SnackbarColor {
  const _$SnackbarColorImpl({
    required this.textColor,
    required this.borderColor,
    required this.backgroundColor,
  });

  @override
  final Color textColor;
  @override
  final Color borderColor;

  /// Used for background color as well as icon color
  @override
  final Color backgroundColor;

  @override
  String toString() {
    return 'SnackbarColor(textColor: $textColor, borderColor: $borderColor, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackbarColorImpl &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.borderColor, borderColor) ||
                other.borderColor == borderColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, textColor, borderColor, backgroundColor);

  /// Create a copy of SnackbarColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackbarColorImplCopyWith<_$SnackbarColorImpl> get copyWith =>
      __$$SnackbarColorImplCopyWithImpl<_$SnackbarColorImpl>(this, _$identity);
}

abstract class _SnackbarColor implements SnackbarColor {
  const factory _SnackbarColor({
    required final Color textColor,
    required final Color borderColor,
    required final Color backgroundColor,
  }) = _$SnackbarColorImpl;

  @override
  Color get textColor;
  @override
  Color get borderColor;

  /// Used for background color as well as icon color
  @override
  Color get backgroundColor;

  /// Create a copy of SnackbarColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnackbarColorImplCopyWith<_$SnackbarColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
