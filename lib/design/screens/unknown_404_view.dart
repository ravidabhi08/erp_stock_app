import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/ess_components.dart';
import '../utils/design_utils.dart';

class Unknown404View extends StatelessWidget {
  const Unknown404View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.primaryColor,
      body: Center(
        child: CText(
          '404',
          style: TextThemeX().text18.copyWith(color: context.colorScheme.surface),
        ),
      ),
    );
  }
}
