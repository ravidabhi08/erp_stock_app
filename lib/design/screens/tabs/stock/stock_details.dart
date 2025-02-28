import 'package:erp_stocks/design/components/app_back_button.dart';
import 'package:erp_stocks/design/components/ess_components.dart';
import 'package:erp_stocks/design/screens/tabs/stock/stock_details_controller.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../components/app_button.dart';
import '../../../components/edit_button.dart';
import '../../../utils/design_utils.dart';

class StockDetails extends StatelessWidget {
  const StockDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StockDetailsController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            leading: AppBackButton(),
            automaticallyImplyLeading: false,
            title: CText("Stock Details"),
            titleSpacing: 16,
            actions: [
              EditButton(
                onPressed: () {
                  // Get.toNamed(
                  //   // Routes.UPDATE_PAYMENT_ENTRY(id: controller.paymentEntryId ?? na),
                  // )?.then((updated) {
                  //   if (updated != null && updated) controller.init();
                  // });
                },
              ),
              const SizedBox(width: 8),
              AppButton(
                width: 36,
                height: 36,
                padding: EdgeInsets.zero,
                borderColor: context.colorScheme.error,
                onPressed: () {},
                backgroundColor: context.colorScheme.error.withOpacity(0.05),
                child: SvgPicture.asset(AppIcons.delete, color: context.colorScheme.error),
              ),
              const SizedBox(width: 16),
            ],
          ),
          body: SingleChildScrollView(
            physics: defaultScrollablePhysics,
            child: Column(
              children: [
                const SizedBox(height: 5),
                const StockDetailsCard(),
                const SizedBox(height: 4),
                const StockPaymentCard(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class StockDetailsCard extends StatelessWidget {
  const StockDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(
                    "Wireless Keyboard",
                    style: TextThemeX().text14.copyWith(color: context.theme.primaryColor),
                  ),
                  CText(
                    "01-02-2025",
                    style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
                  ),
                ],
              ),
            ),
            // if (controller.paymentEntry?.nextAction?.isNotEmpty == true)
            //   StatusSwitcherButton(
            //     statuses: controller.paymentEntry?.nextAction,
            //     status: controller.paymentEntry?.workflowState,
            //     onStatusChanged: controller.updatePaymentStatus,
            //   )
            // else
            // TextIndicator(status: "Open"),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CText(
                  "Payment Type",
                  style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
                ),
                const SizedBox(height: 4),
                CText(
                  "Receive",
                  style: TextThemeX().text14.copyWith(color: context.colorScheme.onSurface),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CText(
                  "Party Type",
                  style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
                ),
                CText(
                  "Employee",
                  style: TextThemeX().text14.copyWith(
                    color: context.colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CText(
                  "Mode of Payment",
                  style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
                ),
                CText(
                  "-",
                  style: TextThemeX().text14.copyWith(
                    color: context.colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: 8),
        CText(
          "Company Name",
          style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
        ),
        const SizedBox(height: 4),
        CText(
          "Nesscale",
          style: TextThemeX().text14.copyWith(
            color: context.colorScheme.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ).defaultContainer(borderRadius: 0, hM: 0);
  }
}

class StockPaymentCard extends StatelessWidget {
  const StockPaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(
                    "Party Name",
                    style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
                  ),
                  const SizedBox(height: 4),
                  CText(
                    "Nilesh M",
                    style: TextThemeX().text14.copyWith(
                      color: context.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(
                    "Paid Amount",
                    style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
                  ),
                  const SizedBox(height: 4),
                  CText(
                    "5000",
                    style: TextThemeX().text14.copyWith(
                      color: context.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(
                    "Paid From",
                    style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
                  ),
                  const SizedBox(height: 4),
                  CText(
                    "UPI",
                    style: TextThemeX().text14.copyWith(
                      color: context.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(
                    "Paid To",
                    style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
                  ),
                  const SizedBox(height: 4),
                  CText(
                    "Bank Account - NE",
                    style: TextThemeX().text14.copyWith(
                      color: context.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            // if (!isNullEmptyOrFalse(controller.paymentEntry?.referenceNo)) ...[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(
                    "Reference No.",
                    style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
                  ),
                  const SizedBox(height: 4),
                  CText(
                    "00000085236904",
                    style: TextThemeX().text14.copyWith(
                      color: context.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            // ],
            // if (!isNullEmptyOrFalse(controller.paymentEntry?.referenceDate))
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(
                    "Reference Date",
                    style: TextThemeX().text14.copyWith(color: context.colorScheme.onBackground),
                  ),
                  const SizedBox(height: 4),
                  CText(
                    "28-02-2025",
                    style: TextThemeX().text14.copyWith(
                      color: context.colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ).defaultContainer(borderRadius: 0, hM: 0);
  }
}
