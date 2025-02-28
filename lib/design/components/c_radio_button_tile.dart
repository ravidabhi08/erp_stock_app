part of 'ess_components.dart';

class RadioButtonTile<T> extends StatelessWidget {
  final String? icon;
  final String title;
  final Color? color;
  final Color? borderColor;
  final double? borderRadius;
  final T radioValue;
  final T groupValue;
  final void Function(T?)? onChanged;

  const RadioButtonTile({
    super.key,
    required this.radioValue,
    required this.groupValue,
    this.icon,
    required this.title,
    this.color,
    this.borderRadius,
    this.borderColor,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CCoreButton(
      onPressed: () {
        if (onChanged != null) {
          onChanged!(radioValue);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
          border: Border.all(color: borderColor ?? context.colorScheme.onBackground),
        ),
        child: Row(
          children: [
            if (icon != null) ...[
              selectIcon(icon!),
            ],
            const SizedBox(width: 10),
            CText(
              title,
              style: TextThemeX().text16.copyWith(
                    color: color ?? context.colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const Spacer(),
            Radio<T>(
              value: radioValue,
              onChanged: onChanged,
              groupValue: groupValue,
              activeColor: context.theme.primaryColor,
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
      ),
    );
  }
}
