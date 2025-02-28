import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../screens/translation_controller.dart';
import '../utils/design_utils.dart';
import 'ess_components.dart';

class SearchTextField extends StatelessWidget {
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const SearchTextField({
    super.key,
    this.hintText,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final Widget? suffixIcon;

    final showClearButton = controller?.text.isNotEmpty == true;
    if (showClearButton) {
      suffixIcon = IconButton(
        icon: SvgPicture.asset(
          AppIcons.circleCross,
          colorFilter: ColorFilter.mode(
            context.colorScheme.error,
            BlendMode.srcIn,
          ),
        ),
        onPressed: () {
          controller?.clear();
          onChanged?.call('');
        },
      );
    } else {
      suffixIcon = null;
    }

    return CTextField(
      borderRadius: 40,
      onChanged: onChanged,
      controller: controller,
      suffixIcon: suffixIcon,
      prefixIcon: AppIcons.search,
      hintText: hintText ?? TranslationController.td.search,
      fillColor: context.colorScheme.background,
      // TODO(v2): color
      hintTextColor: context.appColors.iconColor,
    );
  }
}
