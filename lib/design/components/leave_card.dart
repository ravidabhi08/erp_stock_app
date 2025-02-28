// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';

// import '/design/components/ess_components.dart';
// import '/design/utils/design_utils.dart';
// import '/utils/extensions.dart';
// import '../screens/translation_controller.dart';
// import 'text_indicator.dart';

// class LeaveCard extends StatelessWidget {
//   final GetLeaveModel? leaveApplication;
//   final LeaveListController? controller;

//   const LeaveCard({super.key, required this.leaveApplication, this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Get.toNamed(
//           Routes.LEAVE_DETAILS,
//           arguments: leaveApplication?.name,
//         );
//       },
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CText(leaveApplication?.name ?? '', style: TextThemeX().text16.copyWith().semiBold),
//               RotatedBox(
//                   quarterTurns: 2,
//                   child: SvgPicture.asset(
//                     AppIcons.arrowLeft,
//                     color: context.colorScheme.primary,
//                   )),
//             ],
//           ),
//           const SizedBox(height: 6),
//           CText(
//             '${TranslationController.td.appliedOn} ${leaveApplication?.posting_date ?? na}',
//             style: TextThemeX().text14.copyWith(color: context.appColors.iconColor).medium,
//           ),
//           const SizedBox(height: 6),
//           Row(
//             children: [
//               Badge(backgroundColor: context.appColors.iconColor),
//               const SizedBox(width: 4),
//               CText(leaveApplication?.leaveType ?? na,
//                   style: TextThemeX().text16.copyWith(color: context.appColors.iconColor).semiBold),
//               const Spacer(),
//               TextIndicator(
//                   status: ApprovalStatusEnumE7n.fromMap(
//                 leaveApplication?.status?.toMap() ?? na,
//               ).toMap()),
//             ],
//           ),
//           const Divider(height: 16),
//           Row(
//             children: [
//               SvgPicture.asset(
//                 AppIcons.onLeave,
//                 color: context.colorScheme.primary,
//               ),
//               const SizedBox(width: 8),
//               Flexible(
//                 child: CRichText(
//                     maxLines: 2,
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text: "${TranslationController.td.from}: ",
//                           style: TextThemeX()
//                               .text14
//                               .copyWith(letterSpacing: 0, color: greyColorDark)
//                               .semiBold,
//                         ),
//                         TextSpan(
//                           text: leaveApplication?.fromDate ?? na,
//                           style: TextThemeX().text14.copyWith(letterSpacing: 0).semiBold,
//                         ),
//                         TextSpan(
//                           text: " - ",
//                           style: TextThemeX()
//                               .text14
//                               .copyWith(letterSpacing: 0, color: Colors.black)
//                               .semiBold,
//                         ),
//                         TextSpan(
//                           text: "${TranslationController.td.to}: ",
//                           style: TextThemeX()
//                               .text14
//                               .copyWith(letterSpacing: 0, color: greyColorDark)
//                               .semiBold,
//                         ),
//                         TextSpan(
//                           text: leaveApplication?.toDate ?? na,
//                           style: TextThemeX().text14.copyWith(letterSpacing: 0).semiBold,
//                         ),
//                       ],
//                     )),
//               ),
//             ],
//           ),
//         ],
//       ).defaultContainer().paddingOnly(bottom: 16),
//     );
//   }
// }
