part of 'ess_components.dart';

class BgBlur extends StatelessWidget {
  final bool enabled;
  final Widget child;
  final double blur;
  final BorderRadius borderRadius;
  const BgBlur({
    super.key,
    this.blur = 5,
    required this.child,
    this.enabled = true,
    this.borderRadius = BorderRadius.zero,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: enabled ? blur : 0,
          sigmaY: enabled ? blur : 0,
          tileMode: TileMode.mirror,
        ),
        child: child,
      ),
    );
  }
}
