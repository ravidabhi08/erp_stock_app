import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/design_utils.dart';
import 'ess_components.dart';
import 'search_text_field.dart';

enum _BottomSheetType { searchable, normal }

class BottomSheetContainer extends StatelessWidget {
  final Widget? child;
  final bool useExpanded;
  final String? sheetTitle;
  final _BottomSheetType _type;

  const BottomSheetContainer({
    super.key,
    this.sheetTitle,
    required this.child,
    this.useExpanded = true,
  })  : hintText = null,
        controller = null,
        onChanged = null,
        _type = _BottomSheetType.normal;

  final String? hintText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const BottomSheetContainer.searchable({
    super.key,
    this.hintText,
    this.onChanged,
    this.sheetTitle,
    required this.child,
    this.useExpanded = true,
    required this.controller,
  }) : _type = _BottomSheetType.searchable;

  @override
  Widget build(BuildContext context) {
    final effectiveChild = SafeArea(child: child!);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (sheetTitle != null)
          CText(
            sheetTitle!,
            style: TextThemeX().text16.copyWith(fontWeight: FontWeight.w600),
          ).paddingOnly(bottom: 16),
        if (_type == _BottomSheetType.searchable)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: SearchTextField(
              hintText: hintText,
              onChanged: onChanged,
              controller: controller,
            ),
          ),
        useExpanded
            ? Expanded(child: effectiveChild) //
            : effectiveChild,
        // Move the sheet up when the keyboard is shown
        SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
      ],
    );
  }
}
