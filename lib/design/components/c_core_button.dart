part of 'ess_components.dart';

@Deprecated('Use InkWell instead')
class CCoreButton extends CupertinoButton {
  const CCoreButton({
    super.key,
    super.color,
    required super.child,
    super.onPressed,
    super.alignment,
    super.padding = EdgeInsets.zero,
    super.borderRadius = const BorderRadius.all(Radius.circular(defaultBorderRadius)),
  }) : super(
          minSize: 0,
          disabledColor: Colors.transparent,
          pressedOpacity: defaultButtonPressedOpacity,
        );
}
