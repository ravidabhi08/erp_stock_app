import 'package:erp_stocks/core/models/attachment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_model.freezed.dart';
part 'expense_model.g.dart';

@freezed
class PostExpense with _$PostExpense {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PostExpense({
    String? id,
    @JsonKey(name: "attachments") List<Attachments>? fileUrls,
    String? costCenter,
    int? docstatus,
    required String company,
    @JsonKey(name: "expense_approver") String? expenseApprover,
    @JsonKey(name: "expenses") required List<PostExpenseItem> expenseItems,
  }) = _PostExpense;

  factory PostExpense.fromJson(Map<String, dynamic> json) => _$PostExpenseFromJson(json);
}

@freezed
class Attachments with _$Attachments {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Attachments({String? fileUrl}) = _Attachments;

  factory Attachments.fromJson(Map<String, dynamic> json) => _$AttachmentsFromJson(json);
}

@freezed
class PostExpenseItem with _$PostExpenseItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PostExpenseItem({
    String? description,
    required double amount,
    required String expenseType,
    required DateTime expenseDate,
  }) = _PostExpenseItem;

  factory PostExpenseItem.fromJson(Map<String, dynamic> json) => _$PostExpenseItemFromJson(json);
}

@Freezed(toJson: false)
class ExpenseClaimTypeTotals with _$ExpenseClaimTypeTotals {
  @JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
  const factory ExpenseClaimTypeTotals({
    String? name,
    String? employee,
    double? totalAmount,
    String? expenseType,
    String? employeeName,
  }) = _ExpenseClaimTypeTotals;

  factory ExpenseClaimTypeTotals.fromJson(Map<String, Object?> json) =>
      _$ExpenseClaimTypeTotalsFromJson(json);
}

@Freezed(toJson: false)
class GetExpenseModel with _$GetExpenseModel {
  static const referenceDoctype = "Expense Claim";

  @JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
  const factory GetExpenseModel({
    String? company,
    String? employee,
    int? totalExpenses,
    String? postingDate,
    String? expenseType,
    String? employeeName,
    String? expenseApprover,
    String? totalClaimedAmount,
    List<GetAttachmentModel>? attachments,
    @JsonKey(name: "name") String? id,
    // @JsonKey(
    //   fromJson: ApprovalStatusEnumE7n.fromMap,
    // )
    // ApprovalStatusEnum? status,
    // @JsonKey(
    //   fromJson: ApprovalStatusEnumE7n.fromMap,
    // )
    // ApprovalStatusEnum? approvalStatus,
    String? costCenter,
    int? docstatus,
    @JsonKey(name: "expenses") List<PostExpenseItem>? expenseItems,
  }) = _GetExpenseModel;

  factory GetExpenseModel.fromJson(Map<String, Object?> json) => _$GetExpenseModelFromJson(json);
}

extension GetExpenseModelX on GetExpenseModel {
  String? get showExpenseType {
    return switch (totalExpenses) {
      1 || null => expenseType,
      _ => "$expenseType & ${totalExpenses! - 1} more", // TODO: i18n
    };
  }
}
