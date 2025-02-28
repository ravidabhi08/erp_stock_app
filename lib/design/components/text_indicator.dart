import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/design_utils.dart';

part 'text_indicator.freezed.dart';

class TextIndicator extends StatelessWidget {
  final String? status;

  /// If [null], it will use the theme colors [TextIndicatorColors]
  ///
  /// based on the [status] using [TextIndicator.getColors] function
  final Color? color;
  final double? height;

  const TextIndicator({
    super.key,
    this.color,
    required this.status,
    this.height,
  });

  static Color getColors(BuildContext context, String? status) {
    Color resolveColors(Color? color) {
      return color ?? context.appColors.gray;
    }

    return switch (status) {
      'Low' ||
      'Closed' ||
      'Resolved' ||
      'Approved' ||
      'Submitted' =>
        resolveColors(context.appColors.green),
      'High' ||
      'Open' ||
      'Draft' ||
      'Urgent' ||
      'Cancelled' ||
      'Rejected' ||
      'Overdue' =>
        resolveColors(context.appColors.red),
      'Medium' ||
      'Working' ||
      'Pending' ||
      'Pending Review' =>
        resolveColors(context.appColors.orange),
      'On Hold' || 'Replied' => resolveColors(context.appColors.gray),
      _ => resolveColors(context.appColors.gray),
    };
  }

  @override
  Widget build(BuildContext context) {
    final effectiveColor = color ?? getColors(context, status);
    final height = this.height ?? 34;

    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: effectiveColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: effectiveColor.withOpacity(.2)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Badge(backgroundColor: effectiveColor),
          const SizedBox(width: 8),
          Text(
            status ?? na,
            style: TextThemeX().text14.copyWith(color: effectiveColor, letterSpacing: 0),
          ),
        ],
      ),
    );
  }
}

@Freezed(fromJson: false, toJson: false)
class TextIndicatorColor with _$TextIndicatorColor {
  const factory TextIndicatorColor({
    required Color textColor,
    required Color borderColor,
    required Color backgroundColor,
  }) = _TextIndicatorColor;
}
