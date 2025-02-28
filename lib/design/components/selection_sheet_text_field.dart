import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/design_utils.dart';
import 'ess_components.dart';

class SelectionSheetTextField extends StatelessWidget {
  final String? prefixIcon;
  final String? labelText;
  final String? helperText;
  final VoidCallback? onTap;
  final VoidCallback? onClear;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const SelectionSheetTextField({
    super.key,
    this.onTap,
    this.onClear,
    this.labelText,
    this.prefixIcon,
    this.helperText,
    this.controller,
    this.validator = AppValidator.emptyNullValidator,
  });

  @override
  Widget build(BuildContext context) {
    final Widget effectiveSuffixIcon;

    if (onClear != null && controller?.text.isNotEmpty == true) {
      effectiveSuffixIcon = IconButton(
        onPressed: onClear,
        icon: SvgPicture.asset(
          AppIcons.circleCross,
          colorFilter: ColorFilter.mode(
            context.colorScheme.error,
            BlendMode.srcIn,
          ),
        ),
      );
    } else {
      effectiveSuffixIcon = UnconstrainedBox(
        child: SvgPicture.asset(
          AppIcons.chevronDown,
          colorFilter: ColorFilter.mode(
            context.appColors.iconColor,
            BlendMode.srcIn,
          ),
        ),
      );
    }

    return CTextField(
      onTap: onTap,
      readOnly: true,
      validator: validator,
      labelText: labelText,
      helperText: helperText,
      prefixIcon: prefixIcon,
      controller: controller,
      suffixIcon: effectiveSuffixIcon,
    );
  }
}
