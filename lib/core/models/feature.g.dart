// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeatureImpl _$$FeatureImplFromJson(Map<String, dynamic> json) =>
    _$FeatureImpl(
      name: json['name'] as String,
      icon: json['icon'] as String,
      route: json['route'] as String,
      type: $enumDecode(_$FeatureEnumEnumMap, json['type']),
    );

Map<String, dynamic> _$$FeatureImplToJson(_$FeatureImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'route': instance.route,
      'type': _$FeatureEnumEnumMap[instance.type]!,
    };

const _$FeatureEnumEnumMap = {
  FeatureEnum.expense: 'expense',
  FeatureEnum.income: 'income',
  FeatureEnum.payroll: 'payroll',
  FeatureEnum.financialReports: 'financialReports',
  FeatureEnum.taxInvoicing: 'taxInvoicing',
  FeatureEnum.accountStatements: 'accountStatements',
  FeatureEnum.transaction: 'transaction',
  FeatureEnum.order: 'order',
  FeatureEnum.visit: 'visit',
  FeatureEnum.payment: 'payment',
  FeatureEnum.pettyExpense: 'pettyExpense',
  FeatureEnum.timesheet: 'timesheet',
  FeatureEnum.issue: 'issue',
  FeatureEnum.quotation: 'quotation',
  FeatureEnum.attendanceRequest: 'attendanceRequest',
};
