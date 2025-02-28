import 'package:erp_stocks/design/components/app_back_button.dart';
import 'package:erp_stocks/design/screens/tabs/profile/appearance_controller.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/models/ess_theme_data.dart';
import '../../../../src/utils/app_theme.dart';
import '../../../components/ess_components.dart';
import '../../../utils/design_utils.dart';
import '../../translation_controller.dart';

class AppearanceView extends StatelessWidget {
  const AppearanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppearanceController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: context.colorScheme.surface,
          appBar: AppBar(
            leading: const AppBackButton(),
            title: CText(TranslationController.td.appearance),
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  CPullDownButton(
                    hint: TranslationController.td.themeMode,
                    selectedItem: controller.themeMode?.toJson(),
                    items: ESSThemeMode.values.map((e) => e.toJson()).toList(),
                    onChanged: (String item) {
                      controller.setThemeMode(
                        ESSThemeMode.values.firstWhere((e) => e.toJson() == item),
                      );
                      // ESSFirebaseAnalytics().onClick(name: 'theme_mode_$item');
                    },
                  ).paddingSymmetric(horizontal: 16),
                  if (controller.themeMode != ESSThemeMode.dark) ...[
                    const SizedBox(height: 26),
                    CText(
                      TranslationController.td.lightThemes,
                      style: TextThemeX().text18,
                    ).paddingOnly(left: 24),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 135,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.lightThemes?.length ?? 0,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemBuilder: (context, index) {
                          final essThemeType = controller.lightThemes![index];
                          final essTheme = controller.lightThemes![index].theme;
                          final isSelected = essThemeType == controller.lightTheme;

                          return GestureDetector(
                            onTap: () {
                              controller.setLightTheme(essThemeType);
                              // ESSFirebaseAnalytics().onClick(
                              //   name: 'light_theme_${essThemeType.toJson()}',);
                            },
                            child: _ThemeCard(
                              essTheme: essTheme,
                              isSelected: isSelected,
                              essThemeType: essThemeType,
                            ),
                          ).disableWidget(keepColor: true);
                        },
                      ),
                    ),
                  ],
                  if (controller.themeMode != ESSThemeMode.light) ...[
                    const SizedBox(height: 26),
                    CText(
                      TranslationController.td.darkThemes,
                      style: TextThemeX().text18,
                    ).paddingOnly(left: 24),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 135,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.darkThemes?.length ?? 0,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemBuilder: (context, index) {
                          final essThemeType = controller.darkThemes![index];
                          final essTheme = controller.darkThemes![index].theme;
                          final isSelected = essThemeType == controller.darkTheme;

                          return GestureDetector(
                            onTap: () {
                              controller.setDarkTheme(essThemeType);
                              // ESSFirebaseAnalytics().onClick(
                              //   name: 'dark_theme_${essThemeType.toJson()}',
                              // );
                            },
                            child: _ThemeCard(
                              essTheme: essTheme,
                              isSelected: isSelected,
                              essThemeType: essThemeType,
                            ),
                          ).disableWidget(keepColor: true);
                        },
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ThemeCard extends StatelessWidget {
  const _ThemeCard({required this.essTheme, required this.isSelected, required this.essThemeType});

  final bool isSelected;
  final ESSTheme essTheme;
  final ESSThemeType essThemeType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 120,
      decoration: BoxDecoration(
        color: essTheme.background,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CText(
                essThemeType.toJson(),
                style: TextThemeX().text16.copyWith(color: essTheme.primary),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _SmallColourContainer(
                    textColor: essTheme.onPrimary,
                    backgroundColor: essTheme.primary,
                  ),
                  _SmallColourContainer(
                    textColor: essTheme.onSurface,
                    backgroundColor: essTheme.surface,
                  ),
                  _SmallColourContainer(
                    textColor: essTheme.background,
                    backgroundColor: essTheme.onBackground,
                  ),
                  _SmallGradientColourContainer(
                    textColor: essTheme.onError,
                    gradient1: essTheme.appColors.gradient1,
                    gradient2: essTheme.appColors.gradient2,
                  ),
                ],
              ),
            ],
          ),
          if (isSelected)
            Positioned(
              right: 0,
              bottom: 0,
              child: Icon(CupertinoIcons.check_mark_circled, color: essTheme.primary),
            ),
        ],
      ),
    );
  }
}

class _SmallColourContainer extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;

  const _SmallColourContainer({required this.textColor, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(8)),
      child: Center(child: Text('A', style: TextThemeX().text16.copyWith(color: textColor))),
    );
  }
}

class _SmallGradientColourContainer extends StatelessWidget {
  final Color gradient1;
  final Color gradient2;
  final Color textColor;

  const _SmallGradientColourContainer({
    required this.gradient1,
    required this.gradient2,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [gradient1, gradient2],
        ),
      ),
      child: Center(child: Text('A', style: TextThemeX().text16.copyWith(color: textColor))),
    );
  }
}
