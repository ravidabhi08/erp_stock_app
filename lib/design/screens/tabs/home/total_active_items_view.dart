import 'package:auto_size_text/auto_size_text.dart';
import 'package:erp_stocks/design/components/text_indicator.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/app_back_button.dart';
import '../../../components/ess_components.dart';
import '../../../utils/design_utils.dart';

class TotalActiveItemsView extends StatelessWidget {
  const TotalActiveItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 16,
        leading: AppBackButton(),
        title: CText("Total Active Items"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildTotalStockActiveItemCard();
        },
      ),
    );
  }
}

class _buildTotalStockActiveItemCard extends StatelessWidget {
  const _buildTotalStockActiveItemCard();

  @override
  Widget build(BuildContext context) {
    // final titleTextStyle = TextThemeX().text14.copyWith(color: context.appColors.iconColor).regular;

    // final valueTextStyle = TextThemeX().text16.copyWith(overflow: TextOverflow.visible);
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildOrderIdAndDate(context),
          const SizedBox(width: 12),
          // Divider(color: context.appColors.strokeColor, height: 20),
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         AutoSizeText(
          //           TranslationController.td.items,
          //           maxLines: 1,
          //           textScaleFactor: 1,
          //           style: titleTextStyle,
          //         ),
          //         CText("Lenovo ThinkCentre M720", style: valueTextStyle),
          //       ],
          //     ),
          //     const Spacer(),
          //     // Column(
          //     //   crossAxisAlignment: CrossAxisAlignment.end,
          //     //   children: [
          //     //     AutoSizeText(
          //     //       TranslationController.td.amount,
          //     //       maxLines: 1,
          //     //       textScaleFactor: 1,
          //     //       style: titleTextStyle,
          //     //     ),
          //     //     AutoSizeText(
          //     //       "253",
          //     //       maxLines: 1,
          //     //       minFontSize: 10,
          //     //       textScaleFactor: 1,
          //     //       style: valueTextStyle,
          //     //       overflow: TextOverflow.visible,
          //     //     ),
          //     //   ],
          //     // ),
          //   ],
          // ),
        ],
      ),
    ).defaultContainer(vM: 10).listAnimation(position: 0);
  }

  Widget _buildOrderIdAndDate(BuildContext context) {
    final valueTextStyle = TextThemeX().text16.copyWith(overflow: TextOverflow.visible);
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CText(
                  "Lenovo ThinkCentre M720",
                  overflow: TextOverflow.visible,
                  style: TextThemeX().text16.semiBold,
                ),
                CText(
                  'Monitors',
                  style:
                      TextThemeX().text14
                          .copyWith(letterSpacing: 0, color: context.appColors.iconColor)
                          .medium,
                ),
              ],
            ),
            const Spacer(),
            RotatedBox(
              quarterTurns: 2,
              child: SvgPicture.asset(AppIcons.arrowLeft, color: context.colorScheme.primary),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Expanded(
              child: AutoSizeText(
                '84716030',
                style: valueTextStyle,
                maxLines: 1,
                textScaleFactor: 1,
              ),
            ),
            const SizedBox(width: 10),
            TextIndicator(status: "Enabled", height: 32),
          ],
        ),
      ],
    );
  }
}
