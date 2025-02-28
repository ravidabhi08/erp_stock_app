part of 'ess_components.dart';

class ViewAllRow extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final void Function()? onPressed;
  const ViewAllRow({
    super.key,
    required this.title,
    this.onPressed,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16.0),
      child: Row(
        children: [
          CText(
            title,
            style: TextThemeX().text16.copyWith(
                  color: titleColor ?? context.colorScheme.onSurface,
                ),
          ),
          const Spacer(),
          if (onPressed != null)
            AppButton(
              height: 32,
              onPressed: onPressed,
              child: Row(
                children: [
                  CText(
                    TranslationController.td.viewAll,
                    style: TextThemeX()
                        .text14
                        .copyWith(letterSpacing: 0, color: context.colorScheme.onSurface)
                        .semiBold,
                  ),
                  const SizedBox(width: 8),
                  SvgPicture.asset(
                    AppIcons.chevronRight,
                    matchTextDirection: true,
                    colorFilter: ColorFilter.mode(context.colorScheme.primary, BlendMode.srcIn),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
