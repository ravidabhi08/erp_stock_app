// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostExpense _$PostExpenseFromJson(Map<String, dynamic> json) {
  return _PostExpense.fromJson(json);
}

/// @nodoc
mixin _$PostExpense {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "attachments")
  List<Attachments>? get fileUrls => throw _privateConstructorUsedError;
  String? get costCenter => throw _privateConstructorUsedError;
  int? get docstatus => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  @JsonKey(name: "expense_approver")
  String? get expenseApprover => throw _privateConstructorUsedError;
  @JsonKey(name: "expenses")
  List<PostExpenseItem> get expenseItems => throw _privateConstructorUsedError;

  /// Serializes this PostExpense to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostExpense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostExpenseCopyWith<PostExpense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostExpenseCopyWith<$Res> {
  factory $PostExpenseCopyWith(
    PostExpense value,
    $Res Function(PostExpense) then,
  ) = _$PostExpenseCopyWithImpl<$Res, PostExpense>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: "attachments") List<Attachments>? fileUrls,
    String? costCenter,
    int? docstatus,
    String company,
    @JsonKey(name: "expense_approver") String? expenseApprover,
    @JsonKey(name: "expenses") List<PostExpenseItem> expenseItems,
  });
}

/// @nodoc
class _$PostExpenseCopyWithImpl<$Res, $Val extends PostExpense>
    implements $PostExpenseCopyWith<$Res> {
  _$PostExpenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostExpense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileUrls = freezed,
    Object? costCenter = freezed,
    Object? docstatus = freezed,
    Object? company = null,
    Object? expenseApprover = freezed,
    Object? expenseItems = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            fileUrls:
                freezed == fileUrls
                    ? _value.fileUrls
                    : fileUrls // ignore: cast_nullable_to_non_nullable
                        as List<Attachments>?,
            costCenter:
                freezed == costCenter
                    ? _value.costCenter
                    : costCenter // ignore: cast_nullable_to_non_nullable
                        as String?,
            docstatus:
                freezed == docstatus
                    ? _value.docstatus
                    : docstatus // ignore: cast_nullable_to_non_nullable
                        as int?,
            company:
                null == company
                    ? _value.company
                    : company // ignore: cast_nullable_to_non_nullable
                        as String,
            expenseApprover:
                freezed == expenseApprover
                    ? _value.expenseApprover
                    : expenseApprover // ignore: cast_nullable_to_non_nullable
                        as String?,
            expenseItems:
                null == expenseItems
                    ? _value.expenseItems
                    : expenseItems // ignore: cast_nullable_to_non_nullable
                        as List<PostExpenseItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostExpenseImplCopyWith<$Res>
    implements $PostExpenseCopyWith<$Res> {
  factory _$$PostExpenseImplCopyWith(
    _$PostExpenseImpl value,
    $Res Function(_$PostExpenseImpl) then,
  ) = __$$PostExpenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: "attachments") List<Attachments>? fileUrls,
    String? costCenter,
    int? docstatus,
    String company,
    @JsonKey(name: "expense_approver") String? expenseApprover,
    @JsonKey(name: "expenses") List<PostExpenseItem> expenseItems,
  });
}

/// @nodoc
class __$$PostExpenseImplCopyWithImpl<$Res>
    extends _$PostExpenseCopyWithImpl<$Res, _$PostExpenseImpl>
    implements _$$PostExpenseImplCopyWith<$Res> {
  __$$PostExpenseImplCopyWithImpl(
    _$PostExpenseImpl _value,
    $Res Function(_$PostExpenseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostExpense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fileUrls = freezed,
    Object? costCenter = freezed,
    Object? docstatus = freezed,
    Object? company = null,
    Object? expenseApprover = freezed,
    Object? expenseItems = null,
  }) {
    return _then(
      _$PostExpenseImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        fileUrls:
            freezed == fileUrls
                ? _value._fileUrls
                : fileUrls // ignore: cast_nullable_to_non_nullable
                    as List<Attachments>?,
        costCenter:
            freezed == costCenter
                ? _value.costCenter
                : costCenter // ignore: cast_nullable_to_non_nullable
                    as String?,
        docstatus:
            freezed == docstatus
                ? _value.docstatus
                : docstatus // ignore: cast_nullable_to_non_nullable
                    as int?,
        company:
            null == company
                ? _value.company
                : company // ignore: cast_nullable_to_non_nullable
                    as String,
        expenseApprover:
            freezed == expenseApprover
                ? _value.expenseApprover
                : expenseApprover // ignore: cast_nullable_to_non_nullable
                    as String?,
        expenseItems:
            null == expenseItems
                ? _value._expenseItems
                : expenseItems // ignore: cast_nullable_to_non_nullable
                    as List<PostExpenseItem>,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$PostExpenseImpl implements _PostExpense {
  const _$PostExpenseImpl({
    this.id,
    @JsonKey(name: "attachments") final List<Attachments>? fileUrls,
    this.costCenter,
    this.docstatus,
    required this.company,
    @JsonKey(name: "expense_approver") this.expenseApprover,
    @JsonKey(name: "expenses")
    required final List<PostExpenseItem> expenseItems,
  }) : _fileUrls = fileUrls,
       _expenseItems = expenseItems;

  factory _$PostExpenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostExpenseImplFromJson(json);

  @override
  final String? id;
  final List<Attachments>? _fileUrls;
  @override
  @JsonKey(name: "attachments")
  List<Attachments>? get fileUrls {
    final value = _fileUrls;
    if (value == null) return null;
    if (_fileUrls is EqualUnmodifiableListView) return _fileUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? costCenter;
  @override
  final int? docstatus;
  @override
  final String company;
  @override
  @JsonKey(name: "expense_approver")
  final String? expenseApprover;
  final List<PostExpenseItem> _expenseItems;
  @override
  @JsonKey(name: "expenses")
  List<PostExpenseItem> get expenseItems {
    if (_expenseItems is EqualUnmodifiableListView) return _expenseItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseItems);
  }

  @override
  String toString() {
    return 'PostExpense(id: $id, fileUrls: $fileUrls, costCenter: $costCenter, docstatus: $docstatus, company: $company, expenseApprover: $expenseApprover, expenseItems: $expenseItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostExpenseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._fileUrls, _fileUrls) &&
            (identical(other.costCenter, costCenter) ||
                other.costCenter == costCenter) &&
            (identical(other.docstatus, docstatus) ||
                other.docstatus == docstatus) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.expenseApprover, expenseApprover) ||
                other.expenseApprover == expenseApprover) &&
            const DeepCollectionEquality().equals(
              other._expenseItems,
              _expenseItems,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    const DeepCollectionEquality().hash(_fileUrls),
    costCenter,
    docstatus,
    company,
    expenseApprover,
    const DeepCollectionEquality().hash(_expenseItems),
  );

  /// Create a copy of PostExpense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostExpenseImplCopyWith<_$PostExpenseImpl> get copyWith =>
      __$$PostExpenseImplCopyWithImpl<_$PostExpenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostExpenseImplToJson(this);
  }
}

abstract class _PostExpense implements PostExpense {
  const factory _PostExpense({
    final String? id,
    @JsonKey(name: "attachments") final List<Attachments>? fileUrls,
    final String? costCenter,
    final int? docstatus,
    required final String company,
    @JsonKey(name: "expense_approver") final String? expenseApprover,
    @JsonKey(name: "expenses")
    required final List<PostExpenseItem> expenseItems,
  }) = _$PostExpenseImpl;

  factory _PostExpense.fromJson(Map<String, dynamic> json) =
      _$PostExpenseImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "attachments")
  List<Attachments>? get fileUrls;
  @override
  String? get costCenter;
  @override
  int? get docstatus;
  @override
  String get company;
  @override
  @JsonKey(name: "expense_approver")
  String? get expenseApprover;
  @override
  @JsonKey(name: "expenses")
  List<PostExpenseItem> get expenseItems;

  /// Create a copy of PostExpense
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostExpenseImplCopyWith<_$PostExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attachments _$AttachmentsFromJson(Map<String, dynamic> json) {
  return _Attachments.fromJson(json);
}

/// @nodoc
mixin _$Attachments {
  String? get fileUrl => throw _privateConstructorUsedError;

  /// Serializes this Attachments to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Attachments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttachmentsCopyWith<Attachments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentsCopyWith<$Res> {
  factory $AttachmentsCopyWith(
    Attachments value,
    $Res Function(Attachments) then,
  ) = _$AttachmentsCopyWithImpl<$Res, Attachments>;
  @useResult
  $Res call({String? fileUrl});
}

/// @nodoc
class _$AttachmentsCopyWithImpl<$Res, $Val extends Attachments>
    implements $AttachmentsCopyWith<$Res> {
  _$AttachmentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Attachments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fileUrl = freezed}) {
    return _then(
      _value.copyWith(
            fileUrl:
                freezed == fileUrl
                    ? _value.fileUrl
                    : fileUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttachmentsImplCopyWith<$Res>
    implements $AttachmentsCopyWith<$Res> {
  factory _$$AttachmentsImplCopyWith(
    _$AttachmentsImpl value,
    $Res Function(_$AttachmentsImpl) then,
  ) = __$$AttachmentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fileUrl});
}

/// @nodoc
class __$$AttachmentsImplCopyWithImpl<$Res>
    extends _$AttachmentsCopyWithImpl<$Res, _$AttachmentsImpl>
    implements _$$AttachmentsImplCopyWith<$Res> {
  __$$AttachmentsImplCopyWithImpl(
    _$AttachmentsImpl _value,
    $Res Function(_$AttachmentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Attachments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fileUrl = freezed}) {
    return _then(
      _$AttachmentsImpl(
        fileUrl:
            freezed == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$AttachmentsImpl implements _Attachments {
  const _$AttachmentsImpl({this.fileUrl});

  factory _$AttachmentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentsImplFromJson(json);

  @override
  final String? fileUrl;

  @override
  String toString() {
    return 'Attachments(fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentsImpl &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileUrl);

  /// Create a copy of Attachments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentsImplCopyWith<_$AttachmentsImpl> get copyWith =>
      __$$AttachmentsImplCopyWithImpl<_$AttachmentsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentsImplToJson(this);
  }
}

abstract class _Attachments implements Attachments {
  const factory _Attachments({final String? fileUrl}) = _$AttachmentsImpl;

  factory _Attachments.fromJson(Map<String, dynamic> json) =
      _$AttachmentsImpl.fromJson;

  @override
  String? get fileUrl;

  /// Create a copy of Attachments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachmentsImplCopyWith<_$AttachmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostExpenseItem _$PostExpenseItemFromJson(Map<String, dynamic> json) {
  return _PostExpenseItem.fromJson(json);
}

/// @nodoc
mixin _$PostExpenseItem {
  String? get description => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get expenseType => throw _privateConstructorUsedError;
  DateTime get expenseDate => throw _privateConstructorUsedError;

  /// Serializes this PostExpenseItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostExpenseItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostExpenseItemCopyWith<PostExpenseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostExpenseItemCopyWith<$Res> {
  factory $PostExpenseItemCopyWith(
    PostExpenseItem value,
    $Res Function(PostExpenseItem) then,
  ) = _$PostExpenseItemCopyWithImpl<$Res, PostExpenseItem>;
  @useResult
  $Res call({
    String? description,
    double amount,
    String expenseType,
    DateTime expenseDate,
  });
}

/// @nodoc
class _$PostExpenseItemCopyWithImpl<$Res, $Val extends PostExpenseItem>
    implements $PostExpenseItemCopyWith<$Res> {
  _$PostExpenseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostExpenseItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? amount = null,
    Object? expenseType = null,
    Object? expenseDate = null,
  }) {
    return _then(
      _value.copyWith(
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as double,
            expenseType:
                null == expenseType
                    ? _value.expenseType
                    : expenseType // ignore: cast_nullable_to_non_nullable
                        as String,
            expenseDate:
                null == expenseDate
                    ? _value.expenseDate
                    : expenseDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostExpenseItemImplCopyWith<$Res>
    implements $PostExpenseItemCopyWith<$Res> {
  factory _$$PostExpenseItemImplCopyWith(
    _$PostExpenseItemImpl value,
    $Res Function(_$PostExpenseItemImpl) then,
  ) = __$$PostExpenseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? description,
    double amount,
    String expenseType,
    DateTime expenseDate,
  });
}

/// @nodoc
class __$$PostExpenseItemImplCopyWithImpl<$Res>
    extends _$PostExpenseItemCopyWithImpl<$Res, _$PostExpenseItemImpl>
    implements _$$PostExpenseItemImplCopyWith<$Res> {
  __$$PostExpenseItemImplCopyWithImpl(
    _$PostExpenseItemImpl _value,
    $Res Function(_$PostExpenseItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostExpenseItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? amount = null,
    Object? expenseType = null,
    Object? expenseDate = null,
  }) {
    return _then(
      _$PostExpenseItemImpl(
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as double,
        expenseType:
            null == expenseType
                ? _value.expenseType
                : expenseType // ignore: cast_nullable_to_non_nullable
                    as String,
        expenseDate:
            null == expenseDate
                ? _value.expenseDate
                : expenseDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PostExpenseItemImpl implements _PostExpenseItem {
  const _$PostExpenseItemImpl({
    this.description,
    required this.amount,
    required this.expenseType,
    required this.expenseDate,
  });

  factory _$PostExpenseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostExpenseItemImplFromJson(json);

  @override
  final String? description;
  @override
  final double amount;
  @override
  final String expenseType;
  @override
  final DateTime expenseDate;

  @override
  String toString() {
    return 'PostExpenseItem(description: $description, amount: $amount, expenseType: $expenseType, expenseDate: $expenseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostExpenseItemImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.expenseType, expenseType) ||
                other.expenseType == expenseType) &&
            (identical(other.expenseDate, expenseDate) ||
                other.expenseDate == expenseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, amount, expenseType, expenseDate);

  /// Create a copy of PostExpenseItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostExpenseItemImplCopyWith<_$PostExpenseItemImpl> get copyWith =>
      __$$PostExpenseItemImplCopyWithImpl<_$PostExpenseItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PostExpenseItemImplToJson(this);
  }
}

abstract class _PostExpenseItem implements PostExpenseItem {
  const factory _PostExpenseItem({
    final String? description,
    required final double amount,
    required final String expenseType,
    required final DateTime expenseDate,
  }) = _$PostExpenseItemImpl;

  factory _PostExpenseItem.fromJson(Map<String, dynamic> json) =
      _$PostExpenseItemImpl.fromJson;

  @override
  String? get description;
  @override
  double get amount;
  @override
  String get expenseType;
  @override
  DateTime get expenseDate;

  /// Create a copy of PostExpenseItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostExpenseItemImplCopyWith<_$PostExpenseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpenseClaimTypeTotals _$ExpenseClaimTypeTotalsFromJson(
  Map<String, dynamic> json,
) {
  return _ExpenseClaimTypeTotals.fromJson(json);
}

/// @nodoc
mixin _$ExpenseClaimTypeTotals {
  String? get name => throw _privateConstructorUsedError;
  String? get employee => throw _privateConstructorUsedError;
  double? get totalAmount => throw _privateConstructorUsedError;
  String? get expenseType => throw _privateConstructorUsedError;
  String? get employeeName => throw _privateConstructorUsedError;

  /// Create a copy of ExpenseClaimTypeTotals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpenseClaimTypeTotalsCopyWith<ExpenseClaimTypeTotals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseClaimTypeTotalsCopyWith<$Res> {
  factory $ExpenseClaimTypeTotalsCopyWith(
    ExpenseClaimTypeTotals value,
    $Res Function(ExpenseClaimTypeTotals) then,
  ) = _$ExpenseClaimTypeTotalsCopyWithImpl<$Res, ExpenseClaimTypeTotals>;
  @useResult
  $Res call({
    String? name,
    String? employee,
    double? totalAmount,
    String? expenseType,
    String? employeeName,
  });
}

/// @nodoc
class _$ExpenseClaimTypeTotalsCopyWithImpl<
  $Res,
  $Val extends ExpenseClaimTypeTotals
>
    implements $ExpenseClaimTypeTotalsCopyWith<$Res> {
  _$ExpenseClaimTypeTotalsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseClaimTypeTotals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? employee = freezed,
    Object? totalAmount = freezed,
    Object? expenseType = freezed,
    Object? employeeName = freezed,
  }) {
    return _then(
      _value.copyWith(
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            employee:
                freezed == employee
                    ? _value.employee
                    : employee // ignore: cast_nullable_to_non_nullable
                        as String?,
            totalAmount:
                freezed == totalAmount
                    ? _value.totalAmount
                    : totalAmount // ignore: cast_nullable_to_non_nullable
                        as double?,
            expenseType:
                freezed == expenseType
                    ? _value.expenseType
                    : expenseType // ignore: cast_nullable_to_non_nullable
                        as String?,
            employeeName:
                freezed == employeeName
                    ? _value.employeeName
                    : employeeName // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExpenseClaimTypeTotalsImplCopyWith<$Res>
    implements $ExpenseClaimTypeTotalsCopyWith<$Res> {
  factory _$$ExpenseClaimTypeTotalsImplCopyWith(
    _$ExpenseClaimTypeTotalsImpl value,
    $Res Function(_$ExpenseClaimTypeTotalsImpl) then,
  ) = __$$ExpenseClaimTypeTotalsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? name,
    String? employee,
    double? totalAmount,
    String? expenseType,
    String? employeeName,
  });
}

/// @nodoc
class __$$ExpenseClaimTypeTotalsImplCopyWithImpl<$Res>
    extends
        _$ExpenseClaimTypeTotalsCopyWithImpl<$Res, _$ExpenseClaimTypeTotalsImpl>
    implements _$$ExpenseClaimTypeTotalsImplCopyWith<$Res> {
  __$$ExpenseClaimTypeTotalsImplCopyWithImpl(
    _$ExpenseClaimTypeTotalsImpl _value,
    $Res Function(_$ExpenseClaimTypeTotalsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExpenseClaimTypeTotals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? employee = freezed,
    Object? totalAmount = freezed,
    Object? expenseType = freezed,
    Object? employeeName = freezed,
  }) {
    return _then(
      _$ExpenseClaimTypeTotalsImpl(
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        employee:
            freezed == employee
                ? _value.employee
                : employee // ignore: cast_nullable_to_non_nullable
                    as String?,
        totalAmount:
            freezed == totalAmount
                ? _value.totalAmount
                : totalAmount // ignore: cast_nullable_to_non_nullable
                    as double?,
        expenseType:
            freezed == expenseType
                ? _value.expenseType
                : expenseType // ignore: cast_nullable_to_non_nullable
                    as String?,
        employeeName:
            freezed == employeeName
                ? _value.employeeName
                : employeeName // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
class _$ExpenseClaimTypeTotalsImpl implements _ExpenseClaimTypeTotals {
  const _$ExpenseClaimTypeTotalsImpl({
    this.name,
    this.employee,
    this.totalAmount,
    this.expenseType,
    this.employeeName,
  });

  factory _$ExpenseClaimTypeTotalsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenseClaimTypeTotalsImplFromJson(json);

  @override
  final String? name;
  @override
  final String? employee;
  @override
  final double? totalAmount;
  @override
  final String? expenseType;
  @override
  final String? employeeName;

  @override
  String toString() {
    return 'ExpenseClaimTypeTotals(name: $name, employee: $employee, totalAmount: $totalAmount, expenseType: $expenseType, employeeName: $employeeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseClaimTypeTotalsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.expenseType, expenseType) ||
                other.expenseType == expenseType) &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    employee,
    totalAmount,
    expenseType,
    employeeName,
  );

  /// Create a copy of ExpenseClaimTypeTotals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseClaimTypeTotalsImplCopyWith<_$ExpenseClaimTypeTotalsImpl>
  get copyWith =>
      __$$ExpenseClaimTypeTotalsImplCopyWithImpl<_$ExpenseClaimTypeTotalsImpl>(
        this,
        _$identity,
      );
}

abstract class _ExpenseClaimTypeTotals implements ExpenseClaimTypeTotals {
  const factory _ExpenseClaimTypeTotals({
    final String? name,
    final String? employee,
    final double? totalAmount,
    final String? expenseType,
    final String? employeeName,
  }) = _$ExpenseClaimTypeTotalsImpl;

  factory _ExpenseClaimTypeTotals.fromJson(Map<String, dynamic> json) =
      _$ExpenseClaimTypeTotalsImpl.fromJson;

  @override
  String? get name;
  @override
  String? get employee;
  @override
  double? get totalAmount;
  @override
  String? get expenseType;
  @override
  String? get employeeName;

  /// Create a copy of ExpenseClaimTypeTotals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpenseClaimTypeTotalsImplCopyWith<_$ExpenseClaimTypeTotalsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

GetExpenseModel _$GetExpenseModelFromJson(Map<String, dynamic> json) {
  return _GetExpenseModel.fromJson(json);
}

/// @nodoc
mixin _$GetExpenseModel {
  String? get company => throw _privateConstructorUsedError;
  String? get employee => throw _privateConstructorUsedError;
  int? get totalExpenses => throw _privateConstructorUsedError;
  String? get postingDate => throw _privateConstructorUsedError;
  String? get expenseType => throw _privateConstructorUsedError;
  String? get employeeName => throw _privateConstructorUsedError;
  String? get expenseApprover => throw _privateConstructorUsedError;
  String? get totalClaimedAmount => throw _privateConstructorUsedError;
  List<GetAttachmentModel>? get attachments =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get id => throw _privateConstructorUsedError; // @JsonKey(
  //   fromJson: ApprovalStatusEnumE7n.fromMap,
  // )
  // ApprovalStatusEnum? status,
  // @JsonKey(
  //   fromJson: ApprovalStatusEnumE7n.fromMap,
  // )
  // ApprovalStatusEnum? approvalStatus,
  String? get costCenter => throw _privateConstructorUsedError;
  int? get docstatus => throw _privateConstructorUsedError;
  @JsonKey(name: "expenses")
  List<PostExpenseItem>? get expenseItems => throw _privateConstructorUsedError;

  /// Create a copy of GetExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetExpenseModelCopyWith<GetExpenseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetExpenseModelCopyWith<$Res> {
  factory $GetExpenseModelCopyWith(
    GetExpenseModel value,
    $Res Function(GetExpenseModel) then,
  ) = _$GetExpenseModelCopyWithImpl<$Res, GetExpenseModel>;
  @useResult
  $Res call({
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
    String? costCenter,
    int? docstatus,
    @JsonKey(name: "expenses") List<PostExpenseItem>? expenseItems,
  });
}

/// @nodoc
class _$GetExpenseModelCopyWithImpl<$Res, $Val extends GetExpenseModel>
    implements $GetExpenseModelCopyWith<$Res> {
  _$GetExpenseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = freezed,
    Object? employee = freezed,
    Object? totalExpenses = freezed,
    Object? postingDate = freezed,
    Object? expenseType = freezed,
    Object? employeeName = freezed,
    Object? expenseApprover = freezed,
    Object? totalClaimedAmount = freezed,
    Object? attachments = freezed,
    Object? id = freezed,
    Object? costCenter = freezed,
    Object? docstatus = freezed,
    Object? expenseItems = freezed,
  }) {
    return _then(
      _value.copyWith(
            company:
                freezed == company
                    ? _value.company
                    : company // ignore: cast_nullable_to_non_nullable
                        as String?,
            employee:
                freezed == employee
                    ? _value.employee
                    : employee // ignore: cast_nullable_to_non_nullable
                        as String?,
            totalExpenses:
                freezed == totalExpenses
                    ? _value.totalExpenses
                    : totalExpenses // ignore: cast_nullable_to_non_nullable
                        as int?,
            postingDate:
                freezed == postingDate
                    ? _value.postingDate
                    : postingDate // ignore: cast_nullable_to_non_nullable
                        as String?,
            expenseType:
                freezed == expenseType
                    ? _value.expenseType
                    : expenseType // ignore: cast_nullable_to_non_nullable
                        as String?,
            employeeName:
                freezed == employeeName
                    ? _value.employeeName
                    : employeeName // ignore: cast_nullable_to_non_nullable
                        as String?,
            expenseApprover:
                freezed == expenseApprover
                    ? _value.expenseApprover
                    : expenseApprover // ignore: cast_nullable_to_non_nullable
                        as String?,
            totalClaimedAmount:
                freezed == totalClaimedAmount
                    ? _value.totalClaimedAmount
                    : totalClaimedAmount // ignore: cast_nullable_to_non_nullable
                        as String?,
            attachments:
                freezed == attachments
                    ? _value.attachments
                    : attachments // ignore: cast_nullable_to_non_nullable
                        as List<GetAttachmentModel>?,
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            costCenter:
                freezed == costCenter
                    ? _value.costCenter
                    : costCenter // ignore: cast_nullable_to_non_nullable
                        as String?,
            docstatus:
                freezed == docstatus
                    ? _value.docstatus
                    : docstatus // ignore: cast_nullable_to_non_nullable
                        as int?,
            expenseItems:
                freezed == expenseItems
                    ? _value.expenseItems
                    : expenseItems // ignore: cast_nullable_to_non_nullable
                        as List<PostExpenseItem>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetExpenseModelImplCopyWith<$Res>
    implements $GetExpenseModelCopyWith<$Res> {
  factory _$$GetExpenseModelImplCopyWith(
    _$GetExpenseModelImpl value,
    $Res Function(_$GetExpenseModelImpl) then,
  ) = __$$GetExpenseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
    String? costCenter,
    int? docstatus,
    @JsonKey(name: "expenses") List<PostExpenseItem>? expenseItems,
  });
}

/// @nodoc
class __$$GetExpenseModelImplCopyWithImpl<$Res>
    extends _$GetExpenseModelCopyWithImpl<$Res, _$GetExpenseModelImpl>
    implements _$$GetExpenseModelImplCopyWith<$Res> {
  __$$GetExpenseModelImplCopyWithImpl(
    _$GetExpenseModelImpl _value,
    $Res Function(_$GetExpenseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = freezed,
    Object? employee = freezed,
    Object? totalExpenses = freezed,
    Object? postingDate = freezed,
    Object? expenseType = freezed,
    Object? employeeName = freezed,
    Object? expenseApprover = freezed,
    Object? totalClaimedAmount = freezed,
    Object? attachments = freezed,
    Object? id = freezed,
    Object? costCenter = freezed,
    Object? docstatus = freezed,
    Object? expenseItems = freezed,
  }) {
    return _then(
      _$GetExpenseModelImpl(
        company:
            freezed == company
                ? _value.company
                : company // ignore: cast_nullable_to_non_nullable
                    as String?,
        employee:
            freezed == employee
                ? _value.employee
                : employee // ignore: cast_nullable_to_non_nullable
                    as String?,
        totalExpenses:
            freezed == totalExpenses
                ? _value.totalExpenses
                : totalExpenses // ignore: cast_nullable_to_non_nullable
                    as int?,
        postingDate:
            freezed == postingDate
                ? _value.postingDate
                : postingDate // ignore: cast_nullable_to_non_nullable
                    as String?,
        expenseType:
            freezed == expenseType
                ? _value.expenseType
                : expenseType // ignore: cast_nullable_to_non_nullable
                    as String?,
        employeeName:
            freezed == employeeName
                ? _value.employeeName
                : employeeName // ignore: cast_nullable_to_non_nullable
                    as String?,
        expenseApprover:
            freezed == expenseApprover
                ? _value.expenseApprover
                : expenseApprover // ignore: cast_nullable_to_non_nullable
                    as String?,
        totalClaimedAmount:
            freezed == totalClaimedAmount
                ? _value.totalClaimedAmount
                : totalClaimedAmount // ignore: cast_nullable_to_non_nullable
                    as String?,
        attachments:
            freezed == attachments
                ? _value._attachments
                : attachments // ignore: cast_nullable_to_non_nullable
                    as List<GetAttachmentModel>?,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        costCenter:
            freezed == costCenter
                ? _value.costCenter
                : costCenter // ignore: cast_nullable_to_non_nullable
                    as String?,
        docstatus:
            freezed == docstatus
                ? _value.docstatus
                : docstatus // ignore: cast_nullable_to_non_nullable
                    as int?,
        expenseItems:
            freezed == expenseItems
                ? _value._expenseItems
                : expenseItems // ignore: cast_nullable_to_non_nullable
                    as List<PostExpenseItem>?,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
class _$GetExpenseModelImpl implements _GetExpenseModel {
  const _$GetExpenseModelImpl({
    this.company,
    this.employee,
    this.totalExpenses,
    this.postingDate,
    this.expenseType,
    this.employeeName,
    this.expenseApprover,
    this.totalClaimedAmount,
    final List<GetAttachmentModel>? attachments,
    @JsonKey(name: "name") this.id,
    this.costCenter,
    this.docstatus,
    @JsonKey(name: "expenses") final List<PostExpenseItem>? expenseItems,
  }) : _attachments = attachments,
       _expenseItems = expenseItems;

  factory _$GetExpenseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetExpenseModelImplFromJson(json);

  @override
  final String? company;
  @override
  final String? employee;
  @override
  final int? totalExpenses;
  @override
  final String? postingDate;
  @override
  final String? expenseType;
  @override
  final String? employeeName;
  @override
  final String? expenseApprover;
  @override
  final String? totalClaimedAmount;
  final List<GetAttachmentModel>? _attachments;
  @override
  List<GetAttachmentModel>? get attachments {
    final value = _attachments;
    if (value == null) return null;
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "name")
  final String? id;
  // @JsonKey(
  //   fromJson: ApprovalStatusEnumE7n.fromMap,
  // )
  // ApprovalStatusEnum? status,
  // @JsonKey(
  //   fromJson: ApprovalStatusEnumE7n.fromMap,
  // )
  // ApprovalStatusEnum? approvalStatus,
  @override
  final String? costCenter;
  @override
  final int? docstatus;
  final List<PostExpenseItem>? _expenseItems;
  @override
  @JsonKey(name: "expenses")
  List<PostExpenseItem>? get expenseItems {
    final value = _expenseItems;
    if (value == null) return null;
    if (_expenseItems is EqualUnmodifiableListView) return _expenseItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetExpenseModel(company: $company, employee: $employee, totalExpenses: $totalExpenses, postingDate: $postingDate, expenseType: $expenseType, employeeName: $employeeName, expenseApprover: $expenseApprover, totalClaimedAmount: $totalClaimedAmount, attachments: $attachments, id: $id, costCenter: $costCenter, docstatus: $docstatus, expenseItems: $expenseItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetExpenseModelImpl &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.employee, employee) ||
                other.employee == employee) &&
            (identical(other.totalExpenses, totalExpenses) ||
                other.totalExpenses == totalExpenses) &&
            (identical(other.postingDate, postingDate) ||
                other.postingDate == postingDate) &&
            (identical(other.expenseType, expenseType) ||
                other.expenseType == expenseType) &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName) &&
            (identical(other.expenseApprover, expenseApprover) ||
                other.expenseApprover == expenseApprover) &&
            (identical(other.totalClaimedAmount, totalClaimedAmount) ||
                other.totalClaimedAmount == totalClaimedAmount) &&
            const DeepCollectionEquality().equals(
              other._attachments,
              _attachments,
            ) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.costCenter, costCenter) ||
                other.costCenter == costCenter) &&
            (identical(other.docstatus, docstatus) ||
                other.docstatus == docstatus) &&
            const DeepCollectionEquality().equals(
              other._expenseItems,
              _expenseItems,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    company,
    employee,
    totalExpenses,
    postingDate,
    expenseType,
    employeeName,
    expenseApprover,
    totalClaimedAmount,
    const DeepCollectionEquality().hash(_attachments),
    id,
    costCenter,
    docstatus,
    const DeepCollectionEquality().hash(_expenseItems),
  );

  /// Create a copy of GetExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetExpenseModelImplCopyWith<_$GetExpenseModelImpl> get copyWith =>
      __$$GetExpenseModelImplCopyWithImpl<_$GetExpenseModelImpl>(
        this,
        _$identity,
      );
}

abstract class _GetExpenseModel implements GetExpenseModel {
  const factory _GetExpenseModel({
    final String? company,
    final String? employee,
    final int? totalExpenses,
    final String? postingDate,
    final String? expenseType,
    final String? employeeName,
    final String? expenseApprover,
    final String? totalClaimedAmount,
    final List<GetAttachmentModel>? attachments,
    @JsonKey(name: "name") final String? id,
    final String? costCenter,
    final int? docstatus,
    @JsonKey(name: "expenses") final List<PostExpenseItem>? expenseItems,
  }) = _$GetExpenseModelImpl;

  factory _GetExpenseModel.fromJson(Map<String, dynamic> json) =
      _$GetExpenseModelImpl.fromJson;

  @override
  String? get company;
  @override
  String? get employee;
  @override
  int? get totalExpenses;
  @override
  String? get postingDate;
  @override
  String? get expenseType;
  @override
  String? get employeeName;
  @override
  String? get expenseApprover;
  @override
  String? get totalClaimedAmount;
  @override
  List<GetAttachmentModel>? get attachments;
  @override
  @JsonKey(name: "name")
  String? get id; // @JsonKey(
  //   fromJson: ApprovalStatusEnumE7n.fromMap,
  // )
  // ApprovalStatusEnum? status,
  // @JsonKey(
  //   fromJson: ApprovalStatusEnumE7n.fromMap,
  // )
  // ApprovalStatusEnum? approvalStatus,
  @override
  String? get costCenter;
  @override
  int? get docstatus;
  @override
  @JsonKey(name: "expenses")
  List<PostExpenseItem>? get expenseItems;

  /// Create a copy of GetExpenseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetExpenseModelImplCopyWith<_$GetExpenseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
