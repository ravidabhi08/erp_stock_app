part of 'ess_components.dart';

// //? Widget name doesn't represent the actual widget
// //? This widget is close to the [SelectionSheetTextField] widget
// // TODO: change the widget name OR use the [SelectionSheetTextField] widget instead
class CPullDownButton extends StatefulWidget {
  final String? hint;
  final String? icon;
  final bool required;
  final List<String> items;
  final String? selectedItem;
  final bool isScrollControlled;
  final void Function()? onClear;
  final Function(String item) onChanged;

  const CPullDownButton({
    super.key,
    this.icon,
    this.hint,
    this.onClear,
    this.selectedItem,
    required this.items,
    this.required = false,
    required this.onChanged,
    this.isScrollControlled = false,
  });

  @override
  State<CPullDownButton> createState() => _CPullDownButtonState();
}

class _CPullDownButtonState extends State<CPullDownButton> {
  @override
  Widget build(BuildContext context) {
    void onTap() async {
      await showModalBottomSheet(
        context: context,
        useSafeArea: true,
        isScrollControlled: widget.isScrollControlled,
        builder: (context) {
          final selectedSheetItem = SelectionSheetItem(
            id: widget.selectedItem,
            title: widget.selectedItem,
          );

          final items = widget.items.map((item) {
            return SelectionSheetItem(id: item, title: item);
          }).toList();

          return CSelectionSheet(
            items: items,
            showSearch: false,
            selectedItems: [selectedSheetItem],
            sheetTitle: TranslationController.td.select,
            onSelected: (item) {
              setState(() {
                widget.onChanged(item.id ?? '');
              });
            },
          );
        },
      );
    }

    return SelectionSheetTextField(
      onTap: onTap,
      prefixIcon: widget.icon,
      onClear: widget.onClear,
      labelText: widget.hint ?? TranslationController.td.select,
      controller: TextEditingController(text: widget.selectedItem),
      validator: widget.required ? AppValidator.emptyNullValidator : null,
    );
  }
}
