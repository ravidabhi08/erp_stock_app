import 'package:erp_stocks/core/routes/app_pages.dart';
import 'package:erp_stocks/design/components/app_button.dart';
import 'package:erp_stocks/design/screens/translation_controller.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../components/ess_components.dart';
import '../../../utils/design_utils.dart';
import 'profile_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) {
        // final MainController mainController = controller.mainController;
        final Color userColor = context.colorScheme.primary.withOpacity(.5);
        return Scaffold(
          appBar: AppBar(
            titleSpacing: 16,
            automaticallyImplyLeading: false,
            title: Text(TranslationController.td.myProfile),
          ),
          body: RefreshIndicator.adaptive(
            onRefresh: controller.init,
            child: SingleChildScrollView(
              physics: defaultScrollablePhysics,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    _UserImageNameCard(userColor: userColor),
                    const SizedBox(height: 9),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CText(
                          TranslationController.td.employeeID,
                          style: TextThemeX().text14.copyWith(color: context.colorScheme.onSurface),
                        ),
                        const SizedBox(height: 4),
                        CText(
                          "Ravi",
                          style: TextThemeX().text16.copyWith(fontWeight: FontWeight.w600),
                        ),
                        Divider(thickness: 1, color: context.colorScheme.surface, height: 25),
                        CText(
                          TranslationController.td.dateOfJoining,
                          style: TextThemeX().text14.copyWith(color: context.colorScheme.onSurface),
                        ),
                        const SizedBox(height: 4),
                        CText(
                          "2021-09-01",
                          style: TextThemeX().text16.copyWith(fontWeight: FontWeight.w600),
                        ),
                        Divider(thickness: 1, color: context.colorScheme.surface, height: 25),
                        CText(
                          TranslationController.td.officialEmailAddress,
                          style: TextThemeX().text14.copyWith(color: context.colorScheme.onSurface),
                        ),
                        const SizedBox(height: 4),
                        CText(
                          "Test@gmail.com",
                          style: TextThemeX().text16.copyWith(fontWeight: FontWeight.w600),
                        ),
                        Divider(thickness: 1, color: context.colorScheme.surface, height: 25),
                        CText(
                          TranslationController.td.contactNumber,
                          style: TextThemeX().text14.copyWith(color: context.colorScheme.onSurface),
                        ),
                        const SizedBox(height: 4),
                        CText(
                          "8866295203",
                          style: TextThemeX().text16.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ].animate(interval: 25.ms, effects: childrenTransition),
                    ).defaultContainer(),
                    const SizedBox(height: 16),
                    Column(
                      children: [
                        CCoreButton(
                          onPressed: () => Get.toNamed(Routes.PERSONAL_DETAILS),
                          child: Row(
                            children: [
                              const SizedBox(width: 2),
                              CText(
                                TranslationController.td.personalDetails,
                                style: TextThemeX().text16,
                              ),
                              const Spacer(),
                              _arrow(),
                            ],
                          ),
                        ),
                      ],
                    ).defaultContainer(),
                    const SizedBox(height: 16),
                    Column(
                      children: [
                        CCoreButton(
                          onPressed: () => Get.toNamed(Routes.CHANGE_PASSWORD),
                          child: Row(
                            children: [
                              const SizedBox(width: 2),
                              selectIcon(AppIcons.lock, color: context.theme.primaryColor),
                              const SizedBox(width: 13),
                              CText(
                                TranslationController.td.changePassword,
                                style: TextThemeX().text16.copyWith(
                                  color: context.theme.primaryColor,
                                ),
                              ),
                              const Spacer(),
                              _arrow(),
                            ],
                          ),
                        ),
                        Divider(color: context.colorScheme.surface, height: 25),
                        CCoreButton(
                          onPressed: () => Get.toNamed(Routes.SELECT_LANGUAGE),
                          child: Row(
                            children: [
                              selectIcon(AppIcons.language, color: context.theme.primaryColor),
                              const SizedBox(width: 8),
                              CText(
                                TranslationController.td.selectLanguage,
                                style: TextThemeX().text16.copyWith(
                                  color: context.theme.primaryColor,
                                ),
                              ),
                              const SizedBox(width: 12),
                              // selectImage(AppImages.diamond, width: 24),
                              const Spacer(),
                              _arrow(),
                            ],
                          ),
                        ),

                        Divider(color: context.colorScheme.surface, height: 25),
                        CCoreButton(
                          onPressed: () => Get.toNamed(Routes.APPEARANCE),
                          child: Row(
                            children: [
                              selectIcon(
                                AppIcons.palette,
                                color: context.theme.primaryColor,
                                width: 22,
                              ),
                              const SizedBox(width: 8),
                              CText(
                                TranslationController.td.appearance,
                                style: TextThemeX().text16.copyWith(
                                  color: context.theme.primaryColor,
                                ),
                              ),
                              const SizedBox(width: 12),
                              // if (mainController.showAppearance.isFalse)
                              // selectImage(AppImages.diamond, width: 24),
                              const Spacer(),
                              _arrow(),
                            ],
                          ),
                        ),
                      ],
                    ).defaultContainer(),
                    const SizedBox(height: 16),

                    CCoreButton(
                      onPressed: () {
                        Get.dialog(const LogOutDialog());
                      },
                      child: Row(
                        children: [
                          const SizedBox(width: 3),
                          selectIcon(AppIcons.logout, color: redColorNew),
                          const SizedBox(width: 10),
                          CText(
                            TranslationController.td.logout,
                            style: TextThemeX().text16.copyWith(color: redColorNew),
                          ),
                          const Spacer(),
                          _arrow(),
                        ],
                      ),
                    ).defaultContainer(),
                    // Text(
                    //   "v${controller.appVersion}",
                    //   style: TextThemeX().text14.copyWith(
                    //     fontWeight: FontWeight.bold,
                    //     color: context.colorScheme.primary,
                    //   ),
                    // ).paddingSymmetric(horizontal: 16 + 10, vertical: 10),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _arrow() {
    return SvgPicture.asset(
      AppIcons.chevronRight,
      matchTextDirection: true,
      color: Get.context!.theme.primaryColor,
    );
  }
}

class _UserImageNameCard extends StatelessWidget {
  const _UserImageNameCard({required this.userColor});

  final Color userColor;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) {
        // final MainController mainController = controller.mainController;
        return Row(
          children: [
            // Obx(() {
            // if (controller.isProfileImageUploading.value) {
            //   return Container(
            //     width: 70,
            //     height: 70,
            //     decoration: BoxDecoration(shape: BoxShape.circle, color: userColor),
            //   ).showShimmer();
            // } else {
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: userColor,
                  foregroundImage: selectImageProvider(AppImages.memoji),
                ),
                Positioned(
                  right: -.2,
                  bottom: -.3,
                  child: CCoreButton(
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: context.colorScheme.surface,
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(width: 3, color: context.colorScheme.surface),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            offset: const Offset(2, 4),
                            color: Get.context!.colorScheme.onSurface.withOpacity(0.2),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.add_a_photo,
                        size: 20,
                        color: context.colorScheme.onSurface,
                      ),
                    ),
                  ),
                ),
              ],
            ).animate(delay: 200.ms).fade(duration: 200.ms),
            //  }
            // }),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText("Ravi", style: TextThemeX().text24.copyWith(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 3),
                  FittedBox(
                    child: CText(
                      "N/A",
                      style: TextThemeX().text16.copyWith(color: context.colorScheme.onSurface),
                    ),
                  ),
                ].animate(delay: 100.ms, interval: 25.ms, effects: childrenTransition),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ).defaultContainer();
      },
    );
  }
}

class LogOutDialog extends StatelessWidget {
  const LogOutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(AppIcons.aleart, height: 70),
            const SizedBox(height: 20),
            Text("Logout", style: TextThemeX().text24.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 4),
            Text(
              "Are you sure you want to logout from this device?",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextThemeX().text16.copyWith(color: greyColorDark),
            ),
            const SizedBox(height: 10),
            AppButton(
              backgroundColor: redColor3,
              width: double.infinity,
              onPressed: () async {
                // final bool loggedOut = await Get.find<AuthRepository>().logout();
                // if (loggedOut) Get.offAllNamed(Routes.LOGIN);
              },
              child: CText(
                "Yes, Logout",
                style: TextThemeX().text16.copyWith(color: Colors.white).medium,
              ),
            ),
            const SizedBox(height: 12),
            AppButton(
              // backgroundColor: redColorNew,
              borderColor: greyColorLight,
              width: double.infinity,
              child: CText(
                "Cancel",
                style: TextThemeX().text16.copyWith(color: greyColorDark).medium,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
