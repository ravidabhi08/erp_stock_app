import 'package:auto_size_text/auto_size_text.dart';
import 'package:erp_stocks/core/routes/app_pages.dart';
import 'package:erp_stocks/design/components/text_indicator.dart';
import 'package:erp_stocks/design/screens/tabs/stock/stock_controller.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../components/ess_components.dart';
import '../../../utils/design_utils.dart';
import '../../translation_controller.dart';

class StockView extends StatelessWidget {
  const StockView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StockController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: CText(TranslationController.td.stock),
            titleSpacing: 16,
          ),
          body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return StockCard();
            },
          ),
        );
      },
    );
  }
}

class StockCard extends StatelessWidget {
  const StockCard({super.key});

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = TextThemeX().text14.copyWith(color: context.appColors.iconColor).regular;

    final valueTextStyle = TextThemeX().text16.copyWith(overflow: TextOverflow.visible);
    return InkWell(
      onTap: () => Get.toNamed(Routes.STOCKDETAILS),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildOrderIdAndDate(context),
          const SizedBox(width: 12),
          Divider(color: context.appColors.strokeColor, height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    TranslationController.td.items,
                    maxLines: 1,
                    textScaleFactor: 1,
                    style: titleTextStyle,
                  ),
                  CText("Wireless Keyboard", style: valueTextStyle),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AutoSizeText(
                    TranslationController.td.amount,
                    maxLines: 1,
                    textScaleFactor: 1,
                    style: titleTextStyle,
                  ),
                  AutoSizeText(
                    "253",
                    maxLines: 1,
                    minFontSize: 10,
                    textScaleFactor: 1,
                    style: valueTextStyle,
                    overflow: TextOverflow.visible,
                  ),
                ],
              ),
            ],
          ),
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
                  "CD-0001",
                  overflow: TextOverflow.visible,
                  style: TextThemeX().text16.semiBold,
                ),
                CText(
                  'Products',
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
                'Nesscale ESS',
                style: valueTextStyle,
                maxLines: 1,
                textScaleFactor: 1,
              ),
            ),
            const SizedBox(width: 10),
            TextIndicator(status: "Yes", height: 32),
          ],
        ),
      ],
    );
  }
}
