import 'dart:math' as math;

import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/material.dart';

import '../utils/design_utils.dart';
import 'ess_components.dart';

class AvatarGroup extends StatelessWidget {
  final int? limitTo;
  final double outerRadius;
  final Color? backgroundColor;
  final List<String> imagesList;
  final List<String> userNameList;

  const AvatarGroup({
    super.key,
    this.limitTo,
    this.backgroundColor,
    this.outerRadius = 24.0,
    required this.imagesList,
    required this.userNameList,
  });

  /// It is used to determind how the avatars overlap each other in [stack]
  /// If the value is 0, the avatars will be overlapped(top on each other) completely
  /// If the value is 1, the avatars will be overlapped by half
  /// If the value is 2, the avatars will be side by side(same as placed in the [row])
  final shift = 1.2;

  @override
  Widget build(BuildContext context) {
    final effectiveLength = limitTo == null
        ? imagesList.length
        // added additional length in [limitTo] to display the +1/2/3 avatar
        : math.min(limitTo! + 1, imagesList.length);

    // Example:
    // effectiveLength = 4, shifts = 1.2, radius = 26
    // cumulativeRadius = 26 * (4 + 1) = 130
    // calculatedShift = (1.2 * 26) - 26 = 6.2
    // width = 130 + (6.2 * (4 - 1)) = 148.6
    final width = () {
      final cumulativeRadius = (outerRadius * (effectiveLength + 1));
      final calculatedShift = (shift * outerRadius) - outerRadius;
      // Reducing the length by 1 because the first avatar won't be shifted
      return cumulativeRadius + (calculatedShift * (effectiveLength - 1));
    }();

    return SizedBox(
      width: width,
      height: outerRadius * 2,
      child: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: List.generate(
          effectiveLength,
          (index) {
            if (index == limitTo) {
              return Positioned.directional(
                start: outerRadius * shift * index,
                textDirection: Directionality.of(context),
                child: CircleAvatar(
                  radius: outerRadius,
                  backgroundColor: backgroundColor ?? context.colorScheme.onSurface,
                  child: CText(
                    "+${imagesList.length - limitTo!}",
                    style: TextThemeX().text14.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: context.colorScheme.surface,
                        ),
                  ),
                ),
              );
            } else {
              return Positioned.directional(
                start: outerRadius * shift * index,
                textDirection: Directionality.of(context),
                child: AvatarImage(
                  radius: outerRadius,
                  name: userNameList[index],
                  imageUrl: imagesList[index],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
