part of 'ess_components.dart';

class AvatarImage extends StatelessWidget {
  final String? name;
  final double radius;
  final String? imageUrl;

  const AvatarImage({
    super.key,
    this.imageUrl,
    this.radius = 13,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final showImage = !isNullEmptyOrFalse(imageUrl) || isNullEmptyOrFalse(name);

    return DecoratedBox(
      position: DecorationPosition.foreground,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: context.colorScheme.onSurface),
      ),
      child: showImage
          ? CircleAvatar(
              radius: radius,
              backgroundColor: context.colorScheme.primary,
              // backgroundImage: selectAPIImageProvider(image: imageUrl),
            )
          : CircleAvatar(
              radius: radius,
              backgroundColor: context.colorScheme.primary,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: FittedBox(
                  child: CText(
                    name!.getInitials(),
                    style: TextThemeX().text14.copyWith(
                          fontSize: 12,
                          color: context.colorScheme.onPrimary,
                        ),
                  ),
                ),
              ),
            ),
    );
  }
}
