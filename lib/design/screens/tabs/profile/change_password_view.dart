import 'package:erp_stocks/design/screens/tabs/profile/change_password_controller.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../components/app_back_button.dart';
import '../../../components/app_button.dart';
import '../../../components/ess_components.dart';
import '../../../utils/design_utils.dart';
import '../../translation_controller.dart';

class ChangePasswordView extends GetWidget<ChangePasswordController> {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      appBar: AppBar(
        leading: const AppBackButton(),
        title: CText(TranslationController.td.changePassword),
      ),
      body: Form(
        key: controller.formKey,
        child: Obx(
          () => Column(
            children: [
              SizedBox(height: context.topPadding + 40),
              CTextField(
                prefixIcon: AppIcons.lock,
                textInputAction: TextInputAction.next,
                readOnly: controller.isChanging.value,
                focusNode: controller.currentPasswordNode,
                validator: AppValidator.emptyNullValidator,
                keyboardType: TextInputType.visiblePassword,
                controller: controller.currentPasswordController,
                obscureText: controller.obscureCurrentPassword.value,
                labelText: "${TranslationController.td.currentPassword}*",
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.obscureCurrentPassword.value =
                        !controller.obscureCurrentPassword.value;
                  },
                  icon: SvgPicture.asset(
                    controller.obscureCurrentPassword.value ? AppIcons.eyeClosed : AppIcons.eyeOpen,
                    colorFilter: ColorFilter.mode(
                      controller.obscureCurrentPassword.value
                          ? context.appColors.iconColor
                          : context.colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              CTextField(
                prefixIcon: AppIcons.lock,
                readOnly: controller.isChanging.value,
                focusNode: controller.newPasswordNode,
                textInputAction: TextInputAction.done,
                controller: controller.newPasswordController,
                validator: AppValidator.emptyNullValidator,
                keyboardType: TextInputType.visiblePassword,
                obscureText: controller.obscureNewPassword.value,
                labelText: "${TranslationController.td.newPassword}*",
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.obscureNewPassword.value = !controller.obscureNewPassword.value;
                  },
                  icon: SvgPicture.asset(
                    controller.obscureNewPassword.value ? AppIcons.eyeClosed : AppIcons.eyeOpen,
                    colorFilter: ColorFilter.mode(
                      controller.obscureNewPassword.value
                          ? context.appColors.iconColor
                          : context.colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              PrimaryButton(
                onPressed: () {},
                isLoading: controller.isChanging.value,
                label: TranslationController.td.changePassword,
              ).paddingSymmetric(horizontal: 20),
            ],
          ).paddingSymmetric(horizontal: 16),
        ),
      ),
    );
  }
}
