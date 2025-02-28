// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_indicator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TextIndicatorColor {
  Color get textColor => throw _privateConstructorUsedError;
  Color get borderColor => throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;

  /// Create a copy of TextIndicatorColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextIndicatorColorCopyWith<TextIndicatorColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextIndicatorColorCopyWith<$Res> {
  factory $TextIndicatorColorCopyWith(
    TextIndicatorColor value,
    $Res Function(TextIndicatorColor) then,
  ) = _$TextIndicatorColorCopyWithImpl<$Res, TextIndicatorColor>;
  @useResult
  $Res call({Color textColor, Color borderColor, Color backgroundColor});
}

/// @nodoc
class _$TextIndicatorColorCopyWithImpl<$Res, $Val extends TextIndicatorColor>
    implements $TextIndicatorColorCopyWith<$Res> {
  _$TextIndicatorColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextIndicatorColor
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
abstract class _$$TextIndicatorColorImplCopyWith<$Res>
    implements $TextIndicatorColorCopyWith<$Res> {
  factory _$$TextIndicatorColorImplCopyWith(
    _$TextIndicatorColorImpl value,
    $Res Function(_$TextIndicatorColorImpl) then,
  ) = __$$TextIndicatorColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color textColor, Color borderColor, Color backgroundColor});
}

/// @nodoc
class __$$TextIndicatorColorImplCopyWithImpl<$Res>
    extends _$TextIndicatorColorCopyWithImpl<$Res, _$TextIndicatorColorImpl>
    implements _$$TextIndicatorColorImplCopyWith<$Res> {
  __$$TextIndicatorColorImplCopyWithImpl(
    _$TextIndicatorColorImpl _value,
    $Res Function(_$TextIndicatorColorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TextIndicatorColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textColor = null,
    Object? borderColor = null,
    Object? backgroundColor = null,
  }) {
    return _then(
      _$TextIndicatorColorImpl(
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

class _$TextIndicatorColorImpl implements _TextIndicatorColor {
  const _$TextIndicatorColorImpl({
    required this.textColor,
    required this.borderColor,
    required this.backgroundColor,
  });

  @override
  final Color textColor;
  @override
  final Color borderColor;
  @override
  final Color backgroundColor;

  @override
  String toString() {
    return 'TextIndicatorColor(textColor: $textColor, borderColor: $borderColor, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextIndicatorColorImpl &&
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

  /// Create a copy of TextIndicatorColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextIndicatorColorImplCopyWith<_$TextIndicatorColorImpl> get copyWith =>
      __$$TextIndicatorColorImplCopyWithImpl<_$TextIndicatorColorImpl>(
        this,
        _$identity,
      );
}

abstract class _TextIndicatorColor implements TextIndicatorColor {
  const factory _TextIndicatorColor({
    required final Color textColor,
    required final Color borderColor,
    required final Color backgroundColor,
  }) = _$TextIndicatorColorImpl;

  @override
  Color get textColor;
  @override
  Color get borderColor;
  @override
  Color get backgroundColor;

  /// Create a copy of TextIndicatorColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextIndicatorColorImplCopyWith<_$TextIndicatorColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
