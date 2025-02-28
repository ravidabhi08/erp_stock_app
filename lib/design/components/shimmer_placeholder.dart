part of 'ess_components.dart';

class ContainerPlaceHolder extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final EdgeInsets margin;
  const ContainerPlaceHolder({
    super.key,
    this.height = 190,
    this.width = double.infinity,
    this.borderRadius = defaultBorderRadius,
    this.margin = const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );
  }
}

class ParagraphPlaceholder extends StatelessWidget {
  const ParagraphPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerPlaceHolder(height: 10, borderRadius: 0),
        ContainerPlaceHolder(height: 10, borderRadius: 0),
        ContainerPlaceHolder(height: 10, borderRadius: 0),
        ContainerPlaceHolder(height: 10, borderRadius: 0),
        ContainerPlaceHolder(height: 10, borderRadius: 0),
        ContainerPlaceHolder(height: 10, borderRadius: 0),
        ContainerPlaceHolder(height: 10, borderRadius: 0, width: 200),
      ],
    );
  }
}

class GridViewPlaceHolder extends StatelessWidget {
  final int itemCount;
  final double height;
  final double maxCrossAxisExtent;
  final EdgeInsetsGeometry padding;

  const GridViewPlaceHolder({
    super.key,
    this.height = 150,
    this.itemCount = 3,
    this.maxCrossAxisExtent = 125,
    this.padding = const EdgeInsets.symmetric(
      vertical: 3,
      horizontal: 16,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.custom(
      shrinkWrap: true,
      mainAxisSpacing: 5,
      padding: padding,
      crossAxisSpacing: 5,
      itemCount: itemCount,
      physics: neverScrollablePhysics,
      gridDelegate: SliverSimpleGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: maxCrossAxisExtent,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(defaultBorderRadius),
          ),
        );
      },
    );
  }
}
