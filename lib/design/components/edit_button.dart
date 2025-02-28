import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/design_utils.dart';
import 'app_button.dart';

class EditButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const EditButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      height: 36,
      label: "Edit",
      labelFontSize: 14,
      onPressed: onPressed,
      fontWeight: FontWeight.w600,
      borderColor: context.colorScheme.primary,
      backgroundColor: context.colorScheme.primary.withOpacity(0.05),
      leading: Padding(
        padding: const EdgeInsetsDirectional.only(end: 8),
        child: SvgPicture.asset(
          AppIcons.edit,
          color: context.colorScheme.primary,
        ),
      ),
    );
  }
}
