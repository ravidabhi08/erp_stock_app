import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/design_utils.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: IconButton(
        onPressed: () {
          Navigator.maybePop(context);
        },
        icon: SvgPicture.asset(
          AppIcons.backArrow,
          matchTextDirection: true,
          colorFilter: ColorFilter.mode(
            context.colorScheme.primary,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
