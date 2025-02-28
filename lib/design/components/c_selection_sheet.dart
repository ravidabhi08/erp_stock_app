part of 'ess_components.dart';

class ClearButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const ClearButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CCoreButton(
      onPressed: onPressed,
      child: CText(
        TranslationController.td.clear,
        style: TextThemeX().text16.copyWith(fontWeight: FontWeight.bold, color: redColor2),
      ),
    );
  }
}

class CSelectionSheet extends StatefulWidget {
  final bool showSearch;
  final String? sheetTitle;
  final bool canSelectMultiple;
  final List<SelectionSheetItem> items;
  final List<SelectionSheetItem>? selectedItems;

  final Function(SelectionSheetItem item)? onSelected;
  const CSelectionSheet({
    super.key,
    this.sheetTitle,
    this.onSelected,
    this.selectedItems,
    required this.items,
    this.showSearch = true,
  }) : canSelectMultiple = false,
       onMultiItemSelected = null;

  final Function(List<SelectionSheetItem> item)? onMultiItemSelected;
  const CSelectionSheet.multi({
    super.key,
    this.sheetTitle,
    this.selectedItems,
    required this.items,
    this.showSearch = true,
    this.onMultiItemSelected,
  }) : canSelectMultiple = true,
       onSelected = null;

  @override
  State<CSelectionSheet> createState() => _CSelectionSheetState();
}

class _CSelectionSheetState extends State<CSelectionSheet> {
  final TextEditingController searchController = TextEditingController();

  void onPressed(SelectionSheetItem item) {
    setState(() {
      if (!widget.canSelectMultiple) {
        // Clear otherwise it will keep showing old selected item
        widget.selectedItems?.clear();
      }
      // If item is already selected then remove it otherwise add it
      widget.selectedItems?.contains(item) ?? false
          ? widget.selectedItems?.remove(item)
          : widget.selectedItems?.add(item);

      if (widget.onSelected != null) {
        widget.onSelected!(item);
      }

      widget.onMultiItemSelected?.call(widget.selectedItems!);

      // we immidiaetly close the sheet if only one item is supposed to be selected
      if (!widget.canSelectMultiple) {
        Get.back();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<SelectionSheetItem> filteredItems =
        widget.items
            .where(
              (item) =>
                  (item.title?.toLowerCase().contains(searchController.text.toLowerCase()) ??
                      false) ||
                  (item.subtitle?.toLowerCase().contains(searchController.text.toLowerCase()) ??
                      false) ||
                  (item.id?.toLowerCase().contains(searchController.text.toLowerCase()) ?? false),
            )
            .toList();

    final child =
        filteredItems.isEmpty
            ? UnconstrainedBox(
              alignment: Alignment.topCenter,
              constrainedAxis: Axis.horizontal,
              child: DesignUtils.noDataAvailableCard(topPadding: 0),
            )
            : ListView.separated(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                final String? image = filteredItems[index].image;
                final String title = filteredItems[index].title ?? '';
                final String subtitle = filteredItems[index].subtitle ?? '';

                bool isSelected =
                    widget.selectedItems?.any((item) => item.id == filteredItems[index].id) ??
                    false;

                return InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () => onPressed(filteredItems[index]),
                  child: Row(
                    children: [
                      widget.canSelectMultiple
                          ? SvgPicture.asset(
                            isSelected ? AppIcons.checkRoundFill : AppIcons.emptyCircle,
                            color:
                                isSelected
                                    ? context.colorScheme.primary
                                    : context.colorScheme.onSurface,
                          )
                          : SvgPicture.asset(
                            isSelected ? AppIcons.largecircleFillCircle : AppIcons.emptyCircle,
                            color:
                                isSelected
                                    ? context.colorScheme.primary
                                    : context.colorScheme.onSurface,
                          ),
                      if (image != null) ...[
                        const SizedBox(width: 8),
                        AvatarImage(radius: 17, name: title, imageUrl: image),
                      ],
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CText(
                              title,
                              overflow: TextOverflow.visible,
                              style: TextThemeX().text14.semiBold,
                            ),
                            if (!isNullEmptyOrFalse(subtitle))
                              CText(
                                subtitle,
                                overflow: TextOverflow.visible,
                                style: TextThemeX().text14.copyWith(
                                  fontSize: 12,
                                  // TODO(v2): color
                                  color: context.appColors.iconColor,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ).paddingAll(8),
                ).paddingSymmetric(horizontal: 8).listAnimation(position: index);
              },
              separatorBuilder: (BuildContext context, int index) {
                return widget.canSelectMultiple
                    ? const SizedBox(height: 8)
                    : Divider(
                      height: 8,
                      color: context.appColors.strokeColor,
                    ).paddingSymmetric(horizontal: 16).listAnimation(position: index);
              },
            );

    return widget.showSearch
        ? BottomSheetContainer.searchable(
          controller: searchController,
          onChanged: (_) => setState(() {}),
          sheetTitle: widget.sheetTitle ?? TranslationController.td.select,
          child: child,
        )
        : BottomSheetContainer(
          sheetTitle: widget.sheetTitle ?? TranslationController.td.select,
          child: child,
        );
  }
}

// TODO: use freezed
class SelectionSheetItem {
  final String? id;
  final String? title;
  final String? image;
  final String? subtitle;

  SelectionSheetItem({this.id, this.title, this.image, this.subtitle});

  SelectionSheetItem copyWith({String? id, String? title, String? image, String? subtitle}) {
    return SelectionSheetItem(
      id: id ?? id,
      title: title ?? this.title,
      image: image ?? this.image,
      subtitle: subtitle ?? subtitle,
    );
  }

  @override
  String toString() {
    return 'SelectionSheetItem(id: $id, title: $title, image: $image, subtitle: $subtitle)';
  }

  @override
  bool operator ==(covariant SelectionSheetItem other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.image == image &&
        other.subtitle == subtitle;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ image.hashCode ^ subtitle.hashCode;
  }
}
