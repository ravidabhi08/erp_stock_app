import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/translation_controller.dart';
import 'app_button.dart';

class CancelSubmitButtons extends StatelessWidget {
  final bool useSafeArea;
  final bool isSubmitting;
  final VoidCallback? onSubmit;

  /// If [null], the button will call [Get.back]
  final VoidCallback? onCancel;
  final String? cancelButtonLabel;
  final String? submitButtonLabel;

  const CancelSubmitButtons({
    super.key,
    this.onCancel,
    required this.onSubmit,
    this.submitButtonLabel,
    this.cancelButtonLabel,
    this.useSafeArea = true,
    this.isSubmitting = false,
  });

  @override
  Widget build(BuildContext context) {
    final child = Row(
      children: [
        Expanded(
          child: SecondaryButton(
            onPressed: onCancel ?? Get.back,
            label: cancelButtonLabel ?? TranslationController.td.cancel,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: PrimaryButton(
            onPressed: onSubmit,
            isLoading: isSubmitting,
            label: submitButtonLabel ?? TranslationController.td.submit,
          ),
        ),
      ],
    );

    return useSafeArea
        ? SafeArea(
            minimum: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: child,
          )
        : child;
  }
}
