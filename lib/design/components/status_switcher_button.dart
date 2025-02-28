// import 'package:erp_stocks/src/utils/app_theme.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../screens/translation_controller.dart';
// import '../utils/design_utils.dart';
// import 'app_button.dart';
// import 'ess_components.dart';

// typedef StatusSwitcherCallback = void Function(String status);

// class StatusSwitcherButton extends StatelessWidget {
//   /// The current status of the task
//   final String? status;

//   /// List of statuses to choose from
//   final List<String>? statuses;

//   /// Callback function to be called when the status is changed
//   final StatusSwitcherCallback? onStatusChanged;

//   const StatusSwitcherButton({super.key, this.status, this.statuses, this.onStatusChanged});

//   @override
//   Widget build(BuildContext context) {
//     Future<void> onPressed() async {
//       await showModalBottomSheet(
//         context: context,
//         useSafeArea: true,
//         builder: (context) {
//           final selectionSheetItems = statuses?.map((item) {
//             return SelectionSheetItem(id: item, title: item);
//           }).toList();

//           final selectedSheetItem = SelectionSheetItem(id: status, title: status);

//           return CSelectionSheet(
//             showSearch: false,
//             items: selectionSheetItems ?? [],
//             selectedItems: [selectedSheetItem],
//             sheetTitle: TranslationController.td.updateProgress,
//             onSelected: (item) {
//               onStatusChanged?.call(item.id ?? '');
//             },
//           );
//         },
//       );
//     }

//     return AppButton(
//       height: 34,
//       labelFontSize: 14,
//       label: status ?? na,
//       onPressed: onPressed,
//       labelColor: context.colorScheme.onPrimary,
//       backgroundColor: context.colorScheme.primary,
//       leading: Padding(
//         padding: const EdgeInsetsDirectional.only(end: 8),
//         child: Badge(backgroundColor: context.colorScheme.onPrimary),
//       ),
//       trailing: Padding(
//         padding: const EdgeInsetsDirectional.only(start: 8),
//         child: SvgPicture.asset(
//           AppIcons.chevronDown,
//           colorFilter: ColorFilter.mode(
//             context.colorScheme.onPrimary,
//             BlendMode.srcIn,
//           ),
//         ),
//       ),
//     );
//   }
// }
