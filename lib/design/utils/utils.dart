part of 'design_utils.dart';

  class DesignUtils {
  // static Future<void> showFile({String? file, required BuildContext context}) async {
  //   if (isNullEmptyOrFalse(file)) return ErrorMessages.notFound.errorSnackbar();

  //   if (file!.isImage()) {
  //     return await showAdaptiveDialog(
  //       context: context,
  //       barrierDismissible: true,
  //       builder: (context) {
  //         return BgBlur(
  //           child: Center(
  //             child: SizedBox(
  //               height: 400.0,
  //               child: ClipRect(
  //                 child: PhotoView(
  //                   imageProvider: selectAPIImageProvider(image: file),
  //                   initialScale: PhotoViewComputedScale.contained,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         );
  //       },
  //     );
  //   } else {
  //     final String url = checkAndGetFullImageURL(file);
  //     if (await canLaunchUrlString(url)) {
  //       await launchUrlString(url);
  //     }
  //   }
  // }

  static Widget noDataAvailableCard({
    String? text,
    double? width,
    double height = 130,
    double topPadding = 16,
    double hM = 16,
  }) =>
      SizedBox(
        height: height,
        width: width ?? Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CText(
              text ?? TranslationController.td.noDataAvailable,
              style: TextThemeX().text16.copyWith(color: Get.context!.colorScheme.onBackground),
            ),
          ],
        ),
      ).defaultContainer(hM: hM).animate().fadeIn().paddingOnly(top: topPadding);

  static Widget indicator({Color? color}) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: color ?? Get.context!.theme.primaryColor, width: 3),
      ),
    );
  }

  static Widget adaptiveDialogAction({
    required Widget child,
    required BuildContext context,
    required VoidCallback onPressed,
  }) {
    final ThemeData theme = Theme.of(context);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return TextButton(onPressed: onPressed, child: child);
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoDialogAction(onPressed: onPressed, child: child);
    }
  }

  static Future<void> showConfirmationDialog({
    required String title,
    required String content,
    String positiveButtonTitle = "Yes",
    String negativeButtonTitle = "Cancel",
    required void Function() onConfirm,
  }) async {
    await showAdaptiveDialog(
      context: Get.context!,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog.adaptive(
          title: CText(
            title,
            overflow: TextOverflow.visible,
            style: TextThemeX().text16.copyWith(
                  color: redColorNew,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actionsPadding: const EdgeInsets.only(bottom: 10, right: 10),
          content: CText(
            content,
            overflow: TextOverflow.visible,
            style: TextThemeX().text14.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Get.context!.colorScheme.onSurface,
                ),
          ),
          actions: [
            adaptiveDialogAction(
              context: context,
              onPressed: () => Get.back(),
              child: CText(
                negativeButtonTitle,
                style: TextThemeX().text16.copyWith(color: redColorNew),
              ),
            ),
            adaptiveDialogAction(
              context: context,
              onPressed: onConfirm,
              child: CText(
                positiveButtonTitle,
                style: TextThemeX().text16.copyWith(color: context.theme.primaryColor),
              ),
            ),
          ],
        );
      },
    );
  }
}
