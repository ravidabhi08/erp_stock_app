part of 'ess_components.dart';

class CTextField extends StatelessWidget {
  final int? maxLength;
  final bool showBorders;
  final Key? formFieldKey;
  final bool readOnly;
  final bool enabled;
  final bool obscureText;
  final String? initialValue;
  final String? labelText;
  final String? hintText;
  final double? fontSize;
  final int? maxLines;
  final int? minLines;
  final Color? fillColor;
  final Color? textColor;
  final double? borderRadius;
  final String? helperText;
  final TextAlign textAlign;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final String? prefixIcon;
  final String? suffixText;
  final double? prefixIconSize;
  final EdgeInsets? contentPadding;
  final void Function()? onTap;
  final Color? hintTextColor;
  final Iterable<String>? autofillHints;
  final void Function(String)? onSubmit;
  final void Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final List<TextInputFormatter>? inputFormatters;

  const CTextField({
    super.key,
    this.maxLength,
    this.initialValue,
    this.formFieldKey,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.showBorders = true,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.helperText,
    this.fontSize,
    this.borderRadius = defaultBorderRadius,
    this.maxLines = 1,
    this.minLines = 1,
    this.focusNode,
    this.onTap,
    this.fillColor,
    this.onSubmit,
    this.textColor,
    this.onChanged,
    this.suffixText,
    this.prefixIconSize,
    this.suffixIcon,
    this.inputFormatters,
    this.controller,
    this.validator,
    this.keyboardType,
    this.hintTextColor,
    this.floatingLabelBehavior,
    this.autofillHints,
    this.textAlign = TextAlign.start,
    this.textInputAction = TextInputAction.next,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
  });

  static FilteringTextInputFormatter get decimalFormatter =>
      FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d*)'));

  static const double defaultBorderRadius = 16;

  static get _focusedColor => Get.context!.colorScheme.primary;
  static get _errorColor => Get.context!.colorScheme.error;
  static get _disabledColor => Get.context!.colorScheme.onBackground.withOpacity(.67);
  static get _enabledColor => Get.context!.colorScheme.onBackground;

  static OutlineInputBorder focusedBorder({double borderRadius = defaultBorderRadius}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(width: 1, color: _focusedColor),
      );

  static OutlineInputBorder disabledBorder({double borderRadius = defaultBorderRadius}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(width: 1, color: _disabledColor),
      );

  static OutlineInputBorder enabledBorder({double borderRadius = defaultBorderRadius}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(width: 1, color: _enabledColor),
      );

  static OutlineInputBorder focusedErrorBorder({double borderRadius = defaultBorderRadius}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(width: 1, color: _errorColor),
      );

  static OutlineInputBorder errorBorder({double borderRadius = defaultBorderRadius}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(width: 1, color: _errorColor),
      );

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = borderRadius ?? defaultBorderRadius;

    final effectiveFloatingLabelTextStyle = WidgetStateTextStyle.resolveWith((states) {
      final base = TextThemeX().text14.copyWith(letterSpacing: 0, fontSize: fontSize);

      if (states.contains(MaterialState.error)) {
        return base.copyWith(color: _errorColor);
      }
      if (states.contains(MaterialState.focused)) {
        return base.copyWith(color: _focusedColor);
      }
      if (states.contains(MaterialState.disabled)) {
        return base.copyWith(color: _disabledColor);
      }

      return base.copyWith(color: _enabledColor);
    });

    return SizedBox(
      //TODO: Fix the design
      // height: textFieldHeight,
      child: TextFormField(
        onTap: onTap,
        key: formFieldKey,
        enabled: enabled,
        cursorHeight: 20,
        autocorrect: false,
        minLines: minLines,
        readOnly: readOnly,
        maxLines: maxLines,
        textAlign: textAlign,
        focusNode: focusNode,
        onChanged: onChanged,
        validator: validator,
        maxLength: maxLength,
        controller: controller,
        obscureText: obscureText,
        initialValue: initialValue,
        onFieldSubmitted: onSubmit,
        keyboardType: keyboardType,
        cursorColor: context.theme.primaryColor,
        textInputAction: textInputAction,
        inputFormatters: inputFormatters,
        autofillHints: autofillHints,
        style: TextThemeX().text16.copyWith(
          fontSize: fontSize ?? 15,
          color: textColor ?? context.colorScheme.onSurface,
        ),
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          errorMaxLines: 2,
          hintText: hintText,
          labelText: labelText,
          prefixIcon:
              prefixIcon != null
                  ? UnconstrainedBox(
                    child: SvgPicture.asset(
                      prefixIcon!,
                      width: prefixIconSize,
                      color: context.appColors.iconColor,
                    ),
                  )
                  : null,
          suffixIcon: suffixIcon,
          suffixText: suffixText,
          helperText: helperText,
          contentPadding: contentPadding,
          suffixStyle: TextThemeX().text18.semiBold,
          floatingLabelBehavior: floatingLabelBehavior,
          hintStyle: TextThemeX().text14.copyWith(
            fontSize: fontSize,
            letterSpacing: 0,
            color: hintTextColor ?? context.colorScheme.onBackground,
          ),
          helperStyle: TextThemeX().text14.copyWith(
            fontSize: 12,
            color: context.theme.primaryColor,
          ),
          labelStyle: TextThemeX().text14.copyWith(
            letterSpacing: 0,
            fontSize: fontSize,
            color: hintTextColor ?? context.colorScheme.onBackground,
          ),
          floatingLabelStyle: effectiveFloatingLabelTextStyle,
          fillColor: fillColor ?? context.colorScheme.surface,
          border:
              showBorders
                  ? focusedBorder(borderRadius: borderRadius ?? defaultBorderRadius)
                  : InputBorder.none,
          errorBorder:
              showBorders
                  ? errorBorder(borderRadius: effectiveBorderRadius) //
                  : InputBorder.none,
          enabledBorder:
              showBorders
                  ? enabledBorder(borderRadius: effectiveBorderRadius) //
                  : InputBorder.none,
          focusedBorder:
              showBorders
                  ? focusedBorder(borderRadius: effectiveBorderRadius) //
                  : InputBorder.none,
          disabledBorder:
              showBorders
                  ? disabledBorder(borderRadius: effectiveBorderRadius) //
                  : InputBorder.none,
          focusedErrorBorder:
              showBorders
                  ? focusedErrorBorder(borderRadius: effectiveBorderRadius) //
                  : InputBorder.none,
        ),
      ),
    );
  }
}
