part of 'ess_components.dart';

class CFAB extends StatelessWidget {
  final void Function()? onPressed;
  const CFAB({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      backgroundColor: context.colorScheme.primary,
      child: UnconstrainedBox(
        child: SvgPicture.asset(
          AppIcons.plusBold,
          colorFilter: ColorFilter.mode(
            context.colorScheme.onPrimary,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
