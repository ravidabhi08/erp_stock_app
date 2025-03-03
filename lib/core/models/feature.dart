import 'package:freezed_annotation/freezed_annotation.dart';

part 'feature.freezed.dart';
part 'feature.g.dart';

enum FeatureEnum {
  expense,
  income ,
  payroll,
  financialReports,
  taxInvoicing,
  accountStatements,
  transaction,
  order,
  visit,
  payment,
  pettyExpense,
  timesheet,
  issue,
  quotation,
  attendanceRequest
}

@Freezed()
class Feature with _$Feature {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Feature({
    required String name,
    required String icon,
    required String route,
    required FeatureEnum type,
  }) = _Feature;

  factory Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);
}
