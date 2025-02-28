import 'package:erp_stocks/design/components/app_back_button.dart';
import 'package:erp_stocks/design/components/ess_components.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/design_utils.dart';

class TotalWarehousesView extends StatelessWidget {
  const TotalWarehousesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: AppBackButton(), titleSpacing: 16, title: Text("Total Warehouses")),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return TotalWarehousesCard();
        },
      ),
    );
  }
}

class TotalWarehousesCard extends StatelessWidget {
  const TotalWarehousesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = TextThemeX().text14.copyWith(color: context.appColors.iconColor).regular;

    final valueTextStyle = TextThemeX().text16.copyWith(overflow: TextOverflow.visible);
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText("Warehouse", style: titleTextStyle),
                  CText("Goods In Transit - NE", style: valueTextStyle),
                ],
              ),
              const Spacer(),
              RotatedBox(
                quarterTurns: 2,
                child: SvgPicture.asset(AppIcons.arrowLeft, color: context.colorScheme.primary),
              ),
            ],
          ),
        ],
      ),
    ).defaultContainer(vM: 10).listAnimation(position: 0);
  }
}
