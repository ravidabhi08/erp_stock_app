// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostExpenseImpl _$$PostExpenseImplFromJson(Map<String, dynamic> json) =>
    _$PostExpenseImpl(
      id: json['id'] as String?,
      fileUrls:
          (json['attachments'] as List<dynamic>?)
              ?.map((e) => Attachments.fromJson(e as Map<String, dynamic>))
              .toList(),
      costCenter: json['cost_center'] as String?,
      docstatus: (json['docstatus'] as num?)?.toInt(),
      company: json['company'] as String,
      expenseApprover: json['expense_approver'] as String?,
      expenseItems:
          (json['expenses'] as List<dynamic>)
              .map((e) => PostExpenseItem.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$PostExpenseImplToJson(_$PostExpenseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attachments': instance.fileUrls?.map((e) => e.toJson()).toList(),
      'cost_center': instance.costCenter,
      'docstatus': instance.docstatus,
      'company': instance.company,
      'expense_approver': instance.expenseApprover,
      'expenses': instance.expenseItems.map((e) => e.toJson()).toList(),
    };

_$AttachmentsImpl _$$AttachmentsImplFromJson(Map<String, dynamic> json) =>
    _$AttachmentsImpl(fileUrl: json['file_url'] as String?);

Map<String, dynamic> _$$AttachmentsImplToJson(_$AttachmentsImpl instance) =>
    <String, dynamic>{'file_url': instance.fileUrl};

_$PostExpenseItemImpl _$$PostExpenseItemImplFromJson(
  Map<String, dynamic> json,
) => _$PostExpenseItemImpl(
  description: json['description'] as String?,
  amount: (json['amount'] as num).toDouble(),
  expenseType: json['expense_type'] as String,
  expenseDate: DateTime.parse(json['expense_date'] as String),
);

Map<String, dynamic> _$$PostExpenseItemImplToJson(
  _$PostExpenseItemImpl instance,
) => <String, dynamic>{
  'description': instance.description,
  'amount': instance.amount,
  'expense_type': instance.expenseType,
  'expense_date': instance.expenseDate.toIso8601String(),
};

_$ExpenseClaimTypeTotalsImpl _$$ExpenseClaimTypeTotalsImplFromJson(
  Map<String, dynamic> json,
) => _$ExpenseClaimTypeTotalsImpl(
  name: json['name'] as String?,
  employee: json['employee'] as String?,
  totalAmount: (json['total_amount'] as num?)?.toDouble(),
  expenseType: json['expense_type'] as String?,
  employeeName: json['employee_name'] as String?,
);

_$GetExpenseModelImpl _$$GetExpenseModelImplFromJson(
  Map<String, dynamic> json,
) => _$GetExpenseModelImpl(
  company: json['company'] as String?,
  employee: json['employee'] as String?,
  totalExpenses: (json['total_expenses'] as num?)?.toInt(),
  postingDate: json['posting_date'] as String?,
  expenseType: json['expense_type'] as String?,
  employeeName: json['employee_name'] as String?,
  expenseApprover: json['expense_approver'] as String?,
  totalClaimedAmount: json['total_claimed_amount'] as String?,
  attachments:
      (json['attachments'] as List<dynamic>?)
          ?.map((e) => GetAttachmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  id: json['name'] as String?,
  costCenter: json['cost_center'] as String?,
  docstatus: (json['docstatus'] as num?)?.toInt(),
  expenseItems:
      (json['expenses'] as List<dynamic>?)
          ?.map((e) => PostExpenseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
);
