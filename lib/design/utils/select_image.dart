part of 'design_utils.dart';

Widget noImage({
  double? width,
  double? height,
  BoxFit fit = BoxFit.cover,
}) =>
    selectImage(setldImageIcon(AppImages.noImage), height: height, width: width, fit: fit);

@Deprecated("")

/// To select which Image/Icon being used in current mode
String setldImageIcon(
  String lightImageIcon, [
  String? darkImageIcon,
]) =>
    darkImageIcon != null && isDarkMode ? darkImageIcon : lightImageIcon;

@Deprecated('Use Image.asset() instead')
Widget selectImage(
  String image, {
  double? width,
  double? height,
  void Function()? onPressed,
  BoxFit fit = BoxFit.cover,
}) {
  return CCoreButton(
    onPressed: onPressed,
    child: Image.asset(
      image,
      fit: fit,
      width: width,
      height: height,
    ),
  );
}

Widget selectFileImage(String? image, {BoxFit fit = BoxFit.cover, double? height, double? width}) {
  return ((image != null && image.isEmpty) || image == null)
      ? noImage()
      : Image.file(File(image), fit: fit, width: width, height: height);
}

ImageProvider selectImageProvider(String? image) {
  return image == null ? selectImageProvider(AppImages.noImage) : AssetImage(image);
}

ImageProvider selectFileProvider(String? image) {
  return image == null ? selectImageProvider(AppImages.noImage) : FileImage(File(image));
}

// ImageProvider selectAPIImageProvider({
//   String? image,
//   String? defaultImage,
// }) {
//   // final String? apiKey = GSServices.getUser?.keyDetails?.apiKey;
//   // final String? apiSecret = GSServices.getUser?.keyDetails?.apiSecret;
//   // return ((image != null && image.isEmpty) || image == null)
//   //     ? selectImageProvider(defaultImage ?? AppImages.noImage)
//   //     : CachedNetworkImageProvider(
//   //         checkAndGetFullImageURL(image),
//   //         headers: {"Authorization": 'token $apiKey:$apiSecret'},
//   //       );
// }

@Deprecated('Use SvgPicture.asset() instead')
Widget selectIcon(
  String icon, {
  double? width,
  Color? color,
  void Function()? onPressed,
  EdgeInsetsGeometry? padding = EdgeInsets.zero,
}) {
  return CCoreButton(
    onPressed: onPressed,
    padding: padding,
    child: SvgPicture.asset(
      icon,
      width: width,
      color: color,
      height: width,
    ),
  );
}

Widget networkImage({
  String? image,
  double? height,
  double? width,
  double borderRadius = 0,
  BoxFit fit = BoxFit.cover,
  void Function()? onPressed,
  bool showPlaceholder = true,
}) {
  return isNullEmptyOrFalse(image)
      ? noImage(fit: fit, width: width, height: height)
      : ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: GestureDetector(
            onTap: onPressed,
            child: CachedNetworkImage(
              fit: fit,
              width: width,
              height: height,
              imageUrl: checkAndGetFullImageURL(image),
              placeholder: (context, url) => showPlaceholder
                  ? Container(
                      width: width,
                      height: height,
                      decoration: BoxDecoration(
                        color: context.colorScheme.surface,
                        borderRadius: BorderRadius.circular(borderRadius),
                      ),
                    ).showShimmer()
                  : const SizedBox.shrink(),
              errorWidget: (context, url, error) => Icon(
                CupertinoIcons.exclamationmark_circle,
                color: context.colorScheme.error,
              ),
              // httpHeaders: {
              //   "Authorization":
              //       'token ${GSServices.getUser?.keyDetails?.apiKey}:${GSServices.getUser?.keyDetails?.apiSecret}',
              // },
            ),
          ),
        );
}
