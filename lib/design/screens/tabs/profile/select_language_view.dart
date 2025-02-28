import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/app_back_button.dart';
import '../../../components/ess_components.dart';
import '../../../utils/design_utils.dart';
import '../../translation_controller.dart';
import 'select_language_controller.dart';

class SelectLanguageView extends GetWidget<SelectLanguageController> {
  const SelectLanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      appBar: AppBar(
        leading: const AppBackButton(),
        title: CText(TranslationController.td.selectLanguage),
      ),
      body:
          ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 25, left: 16, right: 16, bottom: context.bottomPadding),
            physics: neverScrollablePhysics,
            itemCount: 1,
            itemBuilder: (context, index) {
              return CCoreButton(
                onPressed: () {},
                child: Container(
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.theme.primaryColor,
                      //  context.theme.dividerColor,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      CText(
                        "English",
                        style: TextThemeX().text16.copyWith(fontWeight: FontWeight.w400),
                      ),
                      const Spacer(),
                      selectIcon(
                        AppIcons.tickSquare,
                        color: context.theme.primaryColor,
                        // : context.colorScheme.onBackground,
                        width: 20,
                      ),
                    ],
                  ),
                ),
              );
            },
          ).disableWidget(),
    );
  }
}
