import 'package:erp_stocks/design/components/ess_components.dart';
import 'package:erp_stocks/design/screens/translation_controller.dart';
import 'package:erp_stocks/design/utils/design_utils.dart';
import 'package:erp_stocks/src/utils/app_theme.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../core/models/feature.dart';
import '../../../../core/routes/app_pages.dart';
import 'home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        // final mainController = controller.mainController;
        return Scaffold(
          appBar: AppBar(
            leadingWidth: 150,
            leading: Padding(
              padding: const EdgeInsetsDirectional.only(start: 8),
              child: Image.asset(
                AppImages.nesscaleFullLogo,
                color: context.colorScheme.primary,
                colorBlendMode: BlendMode.srcIn,
              ),
            ),
            actions: [
              // IconButton(icon: SvgPicture.asset(AppIcons.manager), onPressed: () {}),
              IconButton(
                onPressed: () => Get.toNamed(Routes.NOTIFICATIONS),
                icon: SvgPicture.asset(AppIcons.notification),
              ),

              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(
              //     size: 30,
              //     CupertinoIcons.question_circle,
              //     color: context.theme.primaryColor,
              //   ),
              // ),
            ],
          ),
          body: RefreshIndicator.adaptive(
            onRefresh: controller.onRefresh,
            child: ListView(physics: defaultScrollablePhysics, children: [const _DashboardTab()]),
          ),
        );
      },
    );
  }
}

class _DashboardTab extends StatelessWidget {
  const _DashboardTab();

  static Widget shimmer() {
    return const Column(
      children: [
        SizedBox(height: 20),
        ContainerPlaceHolder(),
        GridViewPlaceHolder(height: 120, itemCount: 4, maxCrossAxisExtent: 175),
        GridViewPlaceHolder(height: 120, itemCount: 6, maxCrossAxisExtent: 115),
        // ContainerPlaceHolder(),
        // ContainerPlaceHolder(),
      ],
    ).showShimmer();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 16),
              const _GreetingsCard(),
              const SizedBox(height: 16),
              const _StockCard(),
              const SizedBox(height: 16),
              const _OptionsGridView(),
              // const _QuickActionsCard(),
              // const SizedBox(height: 16),
              // const _RecentTransactionsCard(),
            ],
          ),
        );
      },
    );
  }
}

class _GreetingsCard extends StatelessWidget {
  const _GreetingsCard();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        final int hour = DateTime.now().hour;

        return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CText(
                            hour < 12
                                ? TranslationController.td.goodMorning
                                : hour < 17
                                ? TranslationController.td.goodAfternoon
                                : TranslationController.td.goodEvening,
                            style: TextThemeX().text24.copyWith(fontFamily: 'SFProText').regular,
                          ),
                          CText("Hello Ravi!", style: TextThemeX().text24.semiBold),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: context.colorScheme.primary.withOpacity(.5),
                      foregroundImage: selectImageProvider(setldImageIcon(AppImages.memoji)),
                      // !isNullEmptyOrFalse(controller.dashboard?.employeeImage)
                      //     ? selectAPIImageProvider(image: "${controller.dashboard?.employeeImage}")
                      //     :
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const SizedBox.shrink(),
              ],
            )
            .defaultContainer()
            .animate()
            .fade(duration: 200.ms)
            .slideY(begin: -0.2, duration: 200.ms, curve: Curves.decelerate);
      },
    );
  }
}

// ignore: unused_element
class _DashboardCard extends StatelessWidget {
  const _DashboardCard();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(color: context.colorScheme.onSurface.withOpacity(.1), blurRadius: 8),
            ],
          ),
          child: AlignedGridView.custom(
            itemCount: 3,
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            gridDelegate: const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 175,
            ),
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: context.colorScheme.primary.withOpacity(.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppIcons.addSquare[index]),
                    const SizedBox(height: 8),
                    CText(TranslationController.td.aMinute[index], style: TextThemeX().text14),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class _StockCard extends StatelessWidget {
  const _StockCard();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return AlignedGridView.custom(
          itemCount: 4,
          shrinkWrap: true,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          // gridDelegate: const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
          //   maxCrossAxisExtent: 175,
          // ),
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Ensures 2 items per row
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                switch (index) {
                  case 0:
                    Get.toNamed(Routes.TOTALSTOCKVALUEVIEW);
                    break;
                  case 1:
                    Get.toNamed(Routes.TOTALWAREHOUSES);
                    break;
                  case 2:
                    Get.toNamed(Routes.TOTAL_ACTIVE_ITEMS);
                  //   break;
                  // case 3:
                  //   // Handle case 3
                  //   break;
                  default:
                  // Get.toNamed(Routes.TOTALSTOCKVALUEVIEW);
                }
                // Get.toNamed(Routes.TOTALSTOCKVALUEVIEW);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color: context.colorScheme.surface,
                  border: Border.all(color: context.colorScheme.onBackground),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Add this line
                  children: [
                    // selectIcon(switch (index) {
                    //   0 => AppIcons.clockIn,
                    //   1 => AppIcons.clockOut,
                    //   2 => AppIcons.notClockIn,
                    //   3 => AppIcons.onLeave,
                    //   _ => "unknown",
                    // }),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CText(
                            switch (index) {
                              0 => '-2 L',
                              1 => '5',
                              2 => '14',
                              3 => '25,000',
                              _ => "unknown",
                            }.toString(),
                            style: TextThemeX().text24.copyWith(
                              fontSize: 22,
                              color: switch (index) {
                                0 => greenColor,
                                1 => const Color(0xffC3208C),
                                2 => yellowColor,
                                3 => redColor,
                                _ => context.theme.primaryColor,
                              },
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          CText(switch (index) {
                            0 => "Total Stock Value",
                            1 => "Total Warehouses",
                            2 => "Total Active Items",
                            3 => "Total  Pay",
                            _ => "unknown",
                          }, style: TextThemeX().text14),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _OptionsGridView extends StatelessWidget {
  const _OptionsGridView();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        // final MainController mainController = controller.mainController;

        controller.options = [
          Feature(
            route: Routes.PERSONAL_DETAILS,
            type: FeatureEnum.expense,
            icon: AppLinealColorIcons.expense,
            name: "Expenses",
          ),
          Feature(
            route: Routes.PERSONAL_DETAILS,
            type: FeatureEnum.expense,
            icon: AppLinealColorIcons.leave,
            name: "Incomes",
          ),
          Feature(
            route: Routes.PERSONAL_DETAILS,
            type: FeatureEnum.payroll,
            icon: AppLinealColorIcons.payroll,
            name: TranslationController.td.payroll,
          ),
          Feature(
            route: Routes.PERSONAL_DETAILS,
            type: FeatureEnum.financialReports,
            icon: AppLinealColorIcons.holiday,
            name: "Reports",
          ),
          Feature(
            route: Routes.PERSONAL_DETAILS,
            type: FeatureEnum.income,
            icon: AppLinealColorIcons.attendance,
            name: "Tax & Invoicing",
          ),
          Feature(
            route: Routes.PERSONAL_DETAILS,
            type: FeatureEnum.transaction,
            icon: AppLinealColorIcons.transaction,
            name: "Account Statements",
          ),
          // Feature(
          //   route: Routes.PERSONAL_DETAILS,
          //   type: FeatureEnum.order,
          //   icon: AppLinealColorIcons.order,
          //   name: TranslationController.td.orders,
          // ),
          // Feature(
          //   route: Routes.PERSONAL_DETAILS,
          //   type: FeatureEnum.visit,
          //   icon: AppLinealColorIcons.visit,
          //   name: TranslationController.td.visit,
          // ),
          Feature(
            type: FeatureEnum.payment,
            route: Routes.PERSONAL_DETAILS,
            icon: AppLinealColorIcons.paymentEntry,
            name: TranslationController.td.payment,
          ),
          // Feature(
          //   route: Routes.PERSONAL_DETAILS,
          //   type: FeatureEnum.pettyExpense,
          //   icon: AppLinealColorIcons.pettyExpense,
          //   name: TranslationController.td.pettyExpenses,
          // ),
          // Feature(
          //   route: Routes.CHANGE_PASSWORD,
          //   type: FeatureEnum.timesheet,
          //   icon: AppLinealColorIcons.timesheet,
          //   name: TranslationController.td.timesheet,
          // ),
          // Feature(
          //   route: Routes.CHANGE_PASSWORD,
          //   type: FeatureEnum.issue,
          //   icon: AppLinealColorIcons.issue,
          //   name: TranslationController.td.issue,
          // ),
        ];

        final List<Feature> options = controller.options;

        return SizedBox(
          // height: options.length <= 6 ? 250 : 350,
          height: options.length <= 6 ? 250 : 350,
          child: AlignedGridView.custom(
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            itemCount: options.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            gridDelegate: const SliverSimpleGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 115,
            ),
            itemBuilder: (BuildContext context, int index) {
              // final bool isPremiumExpired = (!mainController.showTransactions.value &&
              //         options[index].route == Routes.TRANSACTIONS) ||
              //     (!mainController.showOrders.value && options[index].route == Routes.ORDERS) ||
              //     (!mainController.showVisit.value && options[index].route == Routes.VISITS) ||
              //     (!mainController.showAccounting.value &&
              //         options[index].route == Routes.PAYMENT_ENTRIES) ||
              //     (!mainController.showPettyExpenses.value &&
              //         options[index].route == Routes.PETTY_EXPENSES) ||
              //     (!mainController.showTimesheet.value &&
              //         options[index].route == Routes.TIMESHEET) ||
              //     (!mainController.showIssue.value && options[index].route == Routes.ISSUE) ||
              //     (!mainController.showQuotation.value &&
              //         options[index].route == Routes.QUOTATIONS);

              return Stack(
                children: [
                  SizedBox(
                    width: 130,
                    height: 110,
                    child: InkWell(
                      onTap: () async {
                        // if (isPremiumExpired) {
                        //   await DesignUtils.showPremiumFeatureSheet(context: context);
                        // } else {
                        //   Get.toNamed(options[index].route);
                        // }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SvgPicture.asset(
                            options[index].icon,
                            colorFilter:
                                context.theme.brightness == Brightness.dark
                                    ? ColorFilter.mode(
                                      context.colorScheme.onBackground,
                                      BlendMode.srcIn,
                                    )
                                    : null,
                          ),
                          const SizedBox(height: 12),
                          CText(
                            options[index].name,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextThemeX().text14.copyWith(letterSpacing: 0),
                          ),
                        ],
                      ),
                    ).defaultContainer(hM: 0),
                  ),
                  // if (isPremiumExpired)
                  // Positioned(top: 8, right: 8, child: Image.asset(AppImages.diamond, width: 24)),
                ],
              ).listAnimation(position: index, delay: 50.ms);
            },
          ),
        );
      },
    );
  }
}
