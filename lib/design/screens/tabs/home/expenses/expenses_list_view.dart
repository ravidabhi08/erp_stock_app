import 'package:erp_stocks/design/screens/tabs/home/expenses/expenses_list_controller.dart';
import 'package:erp_stocks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/app_back_button.dart';
import '../../../../components/ess_components.dart';
import '../../../../components/expense_card.dart';
import '../../../../utils/design_utils.dart';
import '../../../translation_controller.dart';

class ExpensesListView extends StatefulWidget {
  const ExpensesListView({super.key});

  @override
  State<ExpensesListView> createState() => _ExpensesListViewState();
}

class _ExpensesListViewState extends State<ExpensesListView> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExpensesListController>(
      builder: (controller) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: const _AppBar(),
            body:
                controller.isLoading
                    ? _showShimmer(context)
                    : const Column(
                      children: [
                        Expanded(
                          child: TabBarView(
                            children: [_PendingExpensesList(), _ExpensesHistoryList()],
                          ),
                        ),
                        // _TotalExpenseClaimedCard(),
                        SizedBox(height: 30),
                      ],
                    ),
            floatingActionButton: CFAB(onPressed: () {}),
          ),
        );
      },
    );
  }

  Widget _showShimmer(BuildContext context) {
    return SingleChildScrollView(
      child:
          Column(
            children: List.generate(5, (index) => const ContainerPlaceHolder()),
          ).paddingOnly(bottom: context.bottomPadding).showShimmer(),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExpensesListController>(
      builder: (controller) {
        return AppBar(
          leading: const AppBackButton(),
          title: CText(TranslationController.td.myExpenses),
          actions: [
            // Padding(
            //   padding: const EdgeInsetsDirectional.only(end: 8),
            //   child: FilterButton(
            //     isFilterActive: controller.isFilterActive,
            //     onPressed: () async {
            //       await showFilterBottomSheet(
            //         context: context,
            //         child: const _FilterExpenses(),
            //         sheetTitle: TranslationController.td.filterExpenses,
            //         onApply: () {
            //           Get.back();
            //           controller.filterData();
            //           ESSFirebaseAnalytics().onClick(
            //             name: "${GetExpenseModel.referenceDoctype}_filter_applied",
            //           );
            //         },
            //       );
            //     },
            //   ),
            // ),
          ],
          bottom: TabBar(
            splashBorderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            tabs: [
              Tab(child: Text(TranslationController.td.pendingExpense)),
              Tab(child: Text(TranslationController.td.expenseHistory)),
            ],
          ),
        );
      },
    );
  }

  @override
  // Why 46 ?
  // _kTabHeight = 46.0, at (packages/flutter/lib/src/material/tabs.dart) line 28
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 46);
}

class _PendingExpensesList extends StatelessWidget {
  const _PendingExpensesList();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExpensesListController>(
      builder: (controller) {
        return RefreshIndicator.adaptive(
          onRefresh: () async => await controller.init(),
          child:
              controller.pendingApplications.isEmpty
                  ? const _NoDataAvailableCard()
                  : ListView.builder(
                    itemCount: controller.pendingApplications.length,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    itemBuilder: (BuildContext context, int index) {
                      return ExpenseCard(
                        expense: controller.pendingApplications[index],
                      ).listAnimation(position: index);
                    },
                  ),
        );
      },
    );
  }
}

class _ExpensesHistoryList extends StatelessWidget {
  const _ExpensesHistoryList();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExpensesListController>(
      builder: (controller) {
        return RefreshIndicator.adaptive(
          onRefresh: () async => await controller.init(),
          child:
              controller.historyApplications.isEmpty
                  ? const _NoDataAvailableCard()
                  : ListView.builder(
                    itemCount: controller.historyApplications.length,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    itemBuilder: (BuildContext context, int index) {
                      return ExpenseCard(
                        expense: controller.historyApplications[index],
                      ).listAnimation(position: index);
                    },
                  ),
        );
      },
    );
  }
}

class _NoDataAvailableCard extends StatelessWidget {
  const _NoDataAvailableCard();

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: SingleChildScrollView(
        physics: defaultScrollablePhysics,
        child: Center(
          child: Align(alignment: Alignment.topCenter, child: DesignUtils.noDataAvailableCard()),
        ),
      ),
    );
  }
}
