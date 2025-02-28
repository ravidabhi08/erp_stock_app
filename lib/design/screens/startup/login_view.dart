import 'package:erp_stocks/core/routes/app_pages.dart';
import 'package:erp_stocks/design/components/ess_components.dart';
import 'package:erp_stocks/design/screens/translation_controller.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../components/app_button.dart';
import '../../utils/design_utils.dart';
import 'login_controller.dart';

class LoginView extends GetWidget<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      body: SingleChildScrollView(
        child: AutofillGroup(
          child: Form(
            // key: controller.formKey,
            child: Obx(
              () => Column(
                children: [
                  SizedBox(height: context.topPadding + 80),

                  // isNullEmptyOrFalse(controller.companyLogo.value)
                  selectImage(
                    setldImageIcon(AppImages.nesscaleFullLogo),
                    height: 70,
                    fit: BoxFit.contain,
                  ).animate().fade(),
                  // CachedNetworkImage(
                  //   imageUrl: controller.companyLogo.value,
                  //   height: 80,
                  // ).animate().fade(duration: const Duration(milliseconds: 500)),
                  const SizedBox(height: 15),
                  CText(
                    TranslationController.td.letSSignYouIn,
                    style: TextThemeX().text24.copyWith(
                      color: context.theme.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  CText(
                    TranslationController.td.enterBelowDetailsToContinue,
                    style: TextThemeX().text16.copyWith(
                      color: context.colorScheme.onSurface,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 30),
                  CTextField(
                    labelText: TranslationController.td.username,
                    prefixIcon: AppIcons.user2,
                    // readOnly: controller.isSigning.value,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    // controller: controller.userNameController,
                    validator: AppValidator.emptyNullValidator,
                    autofillHints: const [AutofillHints.username, AutofillHints.email],
                  ),
                  const SizedBox(height: 24),
                  CTextField(
                    prefixIcon: AppIcons.lock,
                    // readOnly: controller.isSigning.value,
                    onSubmit: (_) {},
                    textInputAction: TextInputAction.done,
                    // controller: controller.passwordController,
                    validator: AppValidator.emptyNullValidator,
                    keyboardType: TextInputType.visiblePassword,
                    labelText: TranslationController.td.password,
                    autofillHints: const [AutofillHints.password],
                    // obscureText: controller.obscurePassword.value,
                    // suffixIcon: IconButton(
                    //   onPressed: () {
                    //     controller.obscurePassword.value = !controller.obscurePassword.value;
                    //   },
                    //   icon: SvgPicture.asset(
                    //     controller.obscurePassword.value ? AppIcons.eyeClosed : AppIcons.eyeOpen,
                    //   ),
                    // ),
                  ),
                  const SizedBox(height: 40),
                  AppButton(
                    width: double.infinity,
                    onPressed: () {
                      Get.toNamed(Routes.MAIN);
                    },
                    label: TranslationController.td.login,
                    // isLoading: controller.isSigning.value,
                    labelColor: context.colorScheme.onPrimary,
                    backgroundColor: context.colorScheme.primary,
                  ).paddingSymmetric(horizontal: 16),
                  // const SizedBox(height: 20),
                  // if (controller.isRegistered.isFalse)
                  // AppButton(
                  //   labelColor: context.colorScheme.primary,
                  //   borderColor: context.colorScheme.primary,
                  //   trailing: Padding(
                  //     padding: const EdgeInsetsDirectional.only(start: 8),
                  //     child: SvgPicture.asset(AppIcons.export, color: context.colorScheme.primary),
                  //   ),
                  //   label: TranslationController.td.registerForESS,
                  //   onPressed: () {},
                  //   // () async => await launchUrl(
                  //   //   Uri(scheme: 'https', path: 'erp.nesscale.com/ess-registration/new'),
                  //   //   mode: LaunchMode.externalApplication,
                  //   // ),
                  // ).paddingSymmetric(horizontal: 16).animate().fade(),
                  const SizedBox(height: 35),
                  CText(
                    TranslationController.td.tryOurDemoApp,
                    style: TextThemeX().text14.copyWith(color: context.theme.primaryColor),
                  ),
                  const SizedBox(height: 12),
                  Obx(
                    () => AppButton(
                      width: double.infinity,
                      onPressed: () {},
                      // isLoading: controller.onGuestSigning.value,
                      labelColor: context.colorScheme.onBackground,
                      borderColor: context.colorScheme.onBackground,
                      label: TranslationController.td.continueAsDemoUser,
                      trailing: SvgPicture.asset(
                        AppIcons.chevronForward,
                        color: context.colorScheme.onBackground,
                      ),
                    ).paddingSymmetric(horizontal: 16),
                  ),
                  SizedBox(height: context.bottomPadding),
                ],
              ).paddingSymmetric(horizontal: 16),
            ),
          ),
        ),
      ),
    );
  }
}
