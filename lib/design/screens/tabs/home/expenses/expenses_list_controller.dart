import 'package:get/get.dart';

import '../../../../../core/models/expense_model.dart';

class ExpensesListController extends GetxController {
  bool _isLeftSelected = true;
  bool get isLeftSelected => _isLeftSelected;
  final List<GetExpenseModel> _expensesList = <GetExpenseModel>[].obs;

  final List<GetExpenseModel> _pendingApplications = <GetExpenseModel>[];
  List<GetExpenseModel> get pendingApplications => List.unmodifiable(_pendingApplications);

  final List<GetExpenseModel> _historyApplications = <GetExpenseModel>[];
  List<GetExpenseModel> get historyApplications => List.unmodifiable(_historyApplications);

  final List<ExpenseClaimTypeTotals> _expenseClaimTotals = <ExpenseClaimTypeTotals>[];
  List<ExpenseClaimTypeTotals> get expenseClaimTotals => List.unmodifiable(_expenseClaimTotals);
  @override
  void onReady() {
    super.onReady();
    init();
  }

  bool isLoading = false;
  Future<void> init() async {
    isLoading = true;
    update();
    // _expensesList.assignAll(await _homeRepository.getExpenseClaims());
    // _expenseClaimTotals.assignAll(await _homeRepository.getExpenseClaimTypeTotals());
    // totalClaimedAmount();
    // filterData();
    isLoading = false;
    update();
  }

  void onTabChange({required bool isLeft}) {
    _isLeftSelected = isLeft;
    update();
  }
}
