part of 'ess_components.dart';

@Deprecated("Don't use this widget")
class ActivityHeader extends StatelessWidget {
  const ActivityHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: context.theme.primaryColor, thickness: 1),
        ),
        CText(
          TranslationController.td.activity,
          style: TextThemeX().text16.copyWith(color: context.theme.primaryColor),
        ).paddingSymmetric(horizontal: 15),
        Expanded(child: Divider(color: context.theme.primaryColor, thickness: 1)),
      ],
    );
  }
}
