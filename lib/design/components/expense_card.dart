import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '/design/components/ess_components.dart';
import '/design/utils/design_utils.dart';
import '/utils/extensions.dart';
import '../../core/models/expense_model.dart';

class ExpenseCard extends StatelessWidget {
  final GetExpenseModel expense;

  const ExpenseCard({super.key, required this.expense});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(
        //   Routes.EXPENSE_DETAILS(id: expense.id!),
        //   arguments: expense,
        // );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CText('${expense.id}', style: TextThemeX().text16.copyWith().semiBold),
                  RotatedBox(
                    quarterTurns: 2,
                    child: SvgPicture.asset(AppIcons.arrowLeft, color: context.colorScheme.primary),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              CText(
                '${expense.postingDate}',
                style: TextThemeX().text14.copyWith(color: context.appColors.iconColor).medium,
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  Badge(backgroundColor: context.appColors.iconColor),
                  const SizedBox(width: 4),
                  CText(
                    '${expense.expenseType}',
                    style:
                        TextThemeX().text16.copyWith(color: context.appColors.iconColor).semiBold,
                  ),
                  const Spacer(),
                  // TextIndicator(
                  //   height: 32,
                  //   status: ApprovalStatusEnumE7n.fromMap(
                  //     expense.approvalStatus?.toMap() ?? na,
                  //   ).toMap(),
                  // ),
                ],
              ),
            ],
          ),
          const Divider(height: 16),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(
                    "Total Expenses",
                    style: TextThemeX().text14.copyWith(color: context.appColors.iconColor).medium,
                  ),
                  CText(
                    '${expense.totalExpenses}',
                    style:
                        TextThemeX().text16.copyWith(color: context.colorScheme.primary).semiBold,
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CText(
                    "Total Amount",
                    style: TextThemeX().text14.copyWith(color: context.appColors.iconColor).medium,
                  ),
                  CText(
                    '${expense.totalClaimedAmount}',
                    style:
                        TextThemeX().text16.copyWith(color: context.colorScheme.primary).semiBold,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ).defaultContainer().paddingOnly(bottom: 16);
  }
}
