// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receipt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReceiptModel _$ReceiptModelFromJson(Map<String, dynamic> json) {
  return _ReceiptModel.fromJson(json);
}

/// @nodoc
mixin _$ReceiptModel {
  Receipt? get receipt => throw _privateConstructorUsedError;
  Usage? get usage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptModelCopyWith<ReceiptModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptModelCopyWith<$Res> {
  factory $ReceiptModelCopyWith(
          ReceiptModel value, $Res Function(ReceiptModel) then) =
      _$ReceiptModelCopyWithImpl<$Res, ReceiptModel>;
  @useResult
  $Res call({Receipt? receipt, Usage? usage});

  $ReceiptCopyWith<$Res>? get receipt;
  $UsageCopyWith<$Res>? get usage;
}

/// @nodoc
class _$ReceiptModelCopyWithImpl<$Res, $Val extends ReceiptModel>
    implements $ReceiptModelCopyWith<$Res> {
  _$ReceiptModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipt = freezed,
    Object? usage = freezed,
  }) {
    return _then(_value.copyWith(
      receipt: freezed == receipt
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as Receipt?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReceiptCopyWith<$Res>? get receipt {
    if (_value.receipt == null) {
      return null;
    }

    return $ReceiptCopyWith<$Res>(_value.receipt!, (value) {
      return _then(_value.copyWith(receipt: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $UsageCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReceiptModelImplCopyWith<$Res>
    implements $ReceiptModelCopyWith<$Res> {
  factory _$$ReceiptModelImplCopyWith(
          _$ReceiptModelImpl value, $Res Function(_$ReceiptModelImpl) then) =
      __$$ReceiptModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Receipt? receipt, Usage? usage});

  @override
  $ReceiptCopyWith<$Res>? get receipt;
  @override
  $UsageCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$ReceiptModelImplCopyWithImpl<$Res>
    extends _$ReceiptModelCopyWithImpl<$Res, _$ReceiptModelImpl>
    implements _$$ReceiptModelImplCopyWith<$Res> {
  __$$ReceiptModelImplCopyWithImpl(
      _$ReceiptModelImpl _value, $Res Function(_$ReceiptModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipt = freezed,
    Object? usage = freezed,
  }) {
    return _then(_$ReceiptModelImpl(
      receipt: freezed == receipt
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as Receipt?,
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as Usage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptModelImpl implements _ReceiptModel {
  const _$ReceiptModelImpl({this.receipt, this.usage});

  factory _$ReceiptModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptModelImplFromJson(json);

  @override
  final Receipt? receipt;
  @override
  final Usage? usage;

  @override
  String toString() {
    return 'ReceiptModel(receipt: $receipt, usage: $usage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptModelImpl &&
            (identical(other.receipt, receipt) || other.receipt == receipt) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, receipt, usage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptModelImplCopyWith<_$ReceiptModelImpl> get copyWith =>
      __$$ReceiptModelImplCopyWithImpl<_$ReceiptModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptModelImplToJson(
      this,
    );
  }
}

abstract class _ReceiptModel implements ReceiptModel {
  const factory _ReceiptModel({final Receipt? receipt, final Usage? usage}) =
      _$ReceiptModelImpl;

  factory _ReceiptModel.fromJson(Map<String, dynamic> json) =
      _$ReceiptModelImpl.fromJson;

  @override
  Receipt? get receipt;
  @override
  Usage? get usage;
  @override
  @JsonKey(ignore: true)
  _$$ReceiptModelImplCopyWith<_$ReceiptModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Receipt _$ReceiptFromJson(Map<String, dynamic> json) {
  return _Receipt.fromJson(json);
}

/// @nodoc
mixin _$Receipt {
  String? get ocrType => throw _privateConstructorUsedError;
  int? get ocrConfidence => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  int? get confidence => throw _privateConstructorUsedError;
  String? get expenseCategory => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  double? get subtotal => throw _privateConstructorUsedError;
  int? get discounts => throw _privateConstructorUsedError;
  int? get tax => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  int? get serviceCharge => throw _privateConstructorUsedError;
  int? get tip => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get merchantName => throw _privateConstructorUsedError;
  String? get merchantAddress => throw _privateConstructorUsedError;
  String? get merchantPhone => throw _privateConstructorUsedError;
  String? get merchantWebsite => throw _privateConstructorUsedError;
  String? get merchantTaxRegNo => throw _privateConstructorUsedError;
  String? get identifier => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReceiptCopyWith<Receipt> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiptCopyWith<$Res> {
  factory $ReceiptCopyWith(Receipt value, $Res Function(Receipt) then) =
      _$ReceiptCopyWithImpl<$Res, Receipt>;
  @useResult
  $Res call(
      {String? ocrType,
      int? ocrConfidence,
      String? date,
      String? time,
      int? confidence,
      String? expenseCategory,
      String? paymentMethod,
      double? subtotal,
      int? discounts,
      int? tax,
      double? total,
      int? serviceCharge,
      int? tip,
      String? currency,
      String? country,
      String? merchantName,
      String? merchantAddress,
      String? merchantPhone,
      String? merchantWebsite,
      String? merchantTaxRegNo,
      String? identifier,
      String? imageUrl,
      int? width,
      int? height});
}

/// @nodoc
class _$ReceiptCopyWithImpl<$Res, $Val extends Receipt>
    implements $ReceiptCopyWith<$Res> {
  _$ReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ocrType = freezed,
    Object? ocrConfidence = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? confidence = freezed,
    Object? expenseCategory = freezed,
    Object? paymentMethod = freezed,
    Object? subtotal = freezed,
    Object? discounts = freezed,
    Object? tax = freezed,
    Object? total = freezed,
    Object? serviceCharge = freezed,
    Object? tip = freezed,
    Object? currency = freezed,
    Object? country = freezed,
    Object? merchantName = freezed,
    Object? merchantAddress = freezed,
    Object? merchantPhone = freezed,
    Object? merchantWebsite = freezed,
    Object? merchantTaxRegNo = freezed,
    Object? identifier = freezed,
    Object? imageUrl = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      ocrType: freezed == ocrType
          ? _value.ocrType
          : ocrType // ignore: cast_nullable_to_non_nullable
              as String?,
      ocrConfidence: freezed == ocrConfidence
          ? _value.ocrConfidence
          : ocrConfidence // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      confidence: freezed == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as int?,
      expenseCategory: freezed == expenseCategory
          ? _value.expenseCategory
          : expenseCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      discounts: freezed == discounts
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as int?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceCharge: freezed == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int?,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: freezed == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantAddress: freezed == merchantAddress
          ? _value.merchantAddress
          : merchantAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantPhone: freezed == merchantPhone
          ? _value.merchantPhone
          : merchantPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantWebsite: freezed == merchantWebsite
          ? _value.merchantWebsite
          : merchantWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTaxRegNo: freezed == merchantTaxRegNo
          ? _value.merchantTaxRegNo
          : merchantTaxRegNo // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiptImplCopyWith<$Res> implements $ReceiptCopyWith<$Res> {
  factory _$$ReceiptImplCopyWith(
          _$ReceiptImpl value, $Res Function(_$ReceiptImpl) then) =
      __$$ReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? ocrType,
      int? ocrConfidence,
      String? date,
      String? time,
      int? confidence,
      String? expenseCategory,
      String? paymentMethod,
      double? subtotal,
      int? discounts,
      int? tax,
      double? total,
      int? serviceCharge,
      int? tip,
      String? currency,
      String? country,
      String? merchantName,
      String? merchantAddress,
      String? merchantPhone,
      String? merchantWebsite,
      String? merchantTaxRegNo,
      String? identifier,
      String? imageUrl,
      int? width,
      int? height});
}

/// @nodoc
class __$$ReceiptImplCopyWithImpl<$Res>
    extends _$ReceiptCopyWithImpl<$Res, _$ReceiptImpl>
    implements _$$ReceiptImplCopyWith<$Res> {
  __$$ReceiptImplCopyWithImpl(
      _$ReceiptImpl _value, $Res Function(_$ReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ocrType = freezed,
    Object? ocrConfidence = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? confidence = freezed,
    Object? expenseCategory = freezed,
    Object? paymentMethod = freezed,
    Object? subtotal = freezed,
    Object? discounts = freezed,
    Object? tax = freezed,
    Object? total = freezed,
    Object? serviceCharge = freezed,
    Object? tip = freezed,
    Object? currency = freezed,
    Object? country = freezed,
    Object? merchantName = freezed,
    Object? merchantAddress = freezed,
    Object? merchantPhone = freezed,
    Object? merchantWebsite = freezed,
    Object? merchantTaxRegNo = freezed,
    Object? identifier = freezed,
    Object? imageUrl = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$ReceiptImpl(
      ocrType: freezed == ocrType
          ? _value.ocrType
          : ocrType // ignore: cast_nullable_to_non_nullable
              as String?,
      ocrConfidence: freezed == ocrConfidence
          ? _value.ocrConfidence
          : ocrConfidence // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      confidence: freezed == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as int?,
      expenseCategory: freezed == expenseCategory
          ? _value.expenseCategory
          : expenseCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      discounts: freezed == discounts
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as int?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceCharge: freezed == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int?,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantName: freezed == merchantName
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantAddress: freezed == merchantAddress
          ? _value.merchantAddress
          : merchantAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantPhone: freezed == merchantPhone
          ? _value.merchantPhone
          : merchantPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantWebsite: freezed == merchantWebsite
          ? _value.merchantWebsite
          : merchantWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantTaxRegNo: freezed == merchantTaxRegNo
          ? _value.merchantTaxRegNo
          : merchantTaxRegNo // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceiptImpl implements _Receipt {
  const _$ReceiptImpl(
      {this.ocrType,
      this.ocrConfidence,
      this.date,
      this.time,
      this.confidence,
      this.expenseCategory,
      this.paymentMethod,
      this.subtotal,
      this.discounts,
      this.tax,
      this.total,
      this.serviceCharge,
      this.tip,
      this.currency,
      this.country,
      this.merchantName,
      this.merchantAddress,
      this.merchantPhone,
      this.merchantWebsite,
      this.merchantTaxRegNo,
      this.identifier,
      this.imageUrl,
      this.width,
      this.height});

  factory _$ReceiptImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceiptImplFromJson(json);

  @override
  final String? ocrType;
  @override
  final int? ocrConfidence;
  @override
  final String? date;
  @override
  final String? time;
  @override
  final int? confidence;
  @override
  final String? expenseCategory;
  @override
  final String? paymentMethod;
  @override
  final double? subtotal;
  @override
  final int? discounts;
  @override
  final int? tax;
  @override
  final double? total;
  @override
  final int? serviceCharge;
  @override
  final int? tip;
  @override
  final String? currency;
  @override
  final String? country;
  @override
  final String? merchantName;
  @override
  final String? merchantAddress;
  @override
  final String? merchantPhone;
  @override
  final String? merchantWebsite;
  @override
  final String? merchantTaxRegNo;
  @override
  final String? identifier;
  @override
  final String? imageUrl;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'Receipt(ocrType: $ocrType, ocrConfidence: $ocrConfidence, date: $date, time: $time, confidence: $confidence, expenseCategory: $expenseCategory, paymentMethod: $paymentMethod, subtotal: $subtotal, discounts: $discounts, tax: $tax, total: $total, serviceCharge: $serviceCharge, tip: $tip, currency: $currency, country: $country, merchantName: $merchantName, merchantAddress: $merchantAddress, merchantPhone: $merchantPhone, merchantWebsite: $merchantWebsite, merchantTaxRegNo: $merchantTaxRegNo, identifier: $identifier, imageUrl: $imageUrl, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiptImpl &&
            (identical(other.ocrType, ocrType) || other.ocrType == ocrType) &&
            (identical(other.ocrConfidence, ocrConfidence) ||
                other.ocrConfidence == ocrConfidence) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.expenseCategory, expenseCategory) ||
                other.expenseCategory == expenseCategory) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.discounts, discounts) ||
                other.discounts == discounts) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge) &&
            (identical(other.tip, tip) || other.tip == tip) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.merchantName, merchantName) ||
                other.merchantName == merchantName) &&
            (identical(other.merchantAddress, merchantAddress) ||
                other.merchantAddress == merchantAddress) &&
            (identical(other.merchantPhone, merchantPhone) ||
                other.merchantPhone == merchantPhone) &&
            (identical(other.merchantWebsite, merchantWebsite) ||
                other.merchantWebsite == merchantWebsite) &&
            (identical(other.merchantTaxRegNo, merchantTaxRegNo) ||
                other.merchantTaxRegNo == merchantTaxRegNo) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        ocrType,
        ocrConfidence,
        date,
        time,
        confidence,
        expenseCategory,
        paymentMethod,
        subtotal,
        discounts,
        tax,
        total,
        serviceCharge,
        tip,
        currency,
        country,
        merchantName,
        merchantAddress,
        merchantPhone,
        merchantWebsite,
        merchantTaxRegNo,
        identifier,
        imageUrl,
        width,
        height
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiptImplCopyWith<_$ReceiptImpl> get copyWith =>
      __$$ReceiptImplCopyWithImpl<_$ReceiptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceiptImplToJson(
      this,
    );
  }
}

abstract class _Receipt implements Receipt {
  const factory _Receipt(
      {final String? ocrType,
      final int? ocrConfidence,
      final String? date,
      final String? time,
      final int? confidence,
      final String? expenseCategory,
      final String? paymentMethod,
      final double? subtotal,
      final int? discounts,
      final int? tax,
      final double? total,
      final int? serviceCharge,
      final int? tip,
      final String? currency,
      final String? country,
      final String? merchantName,
      final String? merchantAddress,
      final String? merchantPhone,
      final String? merchantWebsite,
      final String? merchantTaxRegNo,
      final String? identifier,
      final String? imageUrl,
      final int? width,
      final int? height}) = _$ReceiptImpl;

  factory _Receipt.fromJson(Map<String, dynamic> json) = _$ReceiptImpl.fromJson;

  @override
  String? get ocrType;
  @override
  int? get ocrConfidence;
  @override
  String? get date;
  @override
  String? get time;
  @override
  int? get confidence;
  @override
  String? get expenseCategory;
  @override
  String? get paymentMethod;
  @override
  double? get subtotal;
  @override
  int? get discounts;
  @override
  int? get tax;
  @override
  double? get total;
  @override
  int? get serviceCharge;
  @override
  int? get tip;
  @override
  String? get currency;
  @override
  String? get country;
  @override
  String? get merchantName;
  @override
  String? get merchantAddress;
  @override
  String? get merchantPhone;
  @override
  String? get merchantWebsite;
  @override
  String? get merchantTaxRegNo;
  @override
  String? get identifier;
  @override
  String? get imageUrl;
  @override
  int? get width;
  @override
  int? get height;
  @override
  @JsonKey(ignore: true)
  _$$ReceiptImplCopyWith<_$ReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Usage _$UsageFromJson(Map<String, dynamic> json) {
  return _Usage.fromJson(json);
}

/// @nodoc
mixin _$Usage {
  int? get promptTokens => throw _privateConstructorUsedError;
  int? get completionTokens => throw _privateConstructorUsedError;
  int? get totalTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsageCopyWith<Usage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageCopyWith<$Res> {
  factory $UsageCopyWith(Usage value, $Res Function(Usage) then) =
      _$UsageCopyWithImpl<$Res, Usage>;
  @useResult
  $Res call({int? promptTokens, int? completionTokens, int? totalTokens});
}

/// @nodoc
class _$UsageCopyWithImpl<$Res, $Val extends Usage>
    implements $UsageCopyWith<$Res> {
  _$UsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = freezed,
    Object? completionTokens = freezed,
    Object? totalTokens = freezed,
  }) {
    return _then(_value.copyWith(
      promptTokens: freezed == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      completionTokens: freezed == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTokens: freezed == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsageImplCopyWith<$Res> implements $UsageCopyWith<$Res> {
  factory _$$UsageImplCopyWith(
          _$UsageImpl value, $Res Function(_$UsageImpl) then) =
      __$$UsageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? promptTokens, int? completionTokens, int? totalTokens});
}

/// @nodoc
class __$$UsageImplCopyWithImpl<$Res>
    extends _$UsageCopyWithImpl<$Res, _$UsageImpl>
    implements _$$UsageImplCopyWith<$Res> {
  __$$UsageImplCopyWithImpl(
      _$UsageImpl _value, $Res Function(_$UsageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = freezed,
    Object? completionTokens = freezed,
    Object? totalTokens = freezed,
  }) {
    return _then(_$UsageImpl(
      promptTokens: freezed == promptTokens
          ? _value.promptTokens
          : promptTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      completionTokens: freezed == completionTokens
          ? _value.completionTokens
          : completionTokens // ignore: cast_nullable_to_non_nullable
              as int?,
      totalTokens: freezed == totalTokens
          ? _value.totalTokens
          : totalTokens // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsageImpl implements _Usage {
  const _$UsageImpl(
      {this.promptTokens, this.completionTokens, this.totalTokens});

  factory _$UsageImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsageImplFromJson(json);

  @override
  final int? promptTokens;
  @override
  final int? completionTokens;
  @override
  final int? totalTokens;

  @override
  String toString() {
    return 'Usage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsageImpl &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, promptTokens, completionTokens, totalTokens);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsageImplCopyWith<_$UsageImpl> get copyWith =>
      __$$UsageImplCopyWithImpl<_$UsageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsageImplToJson(
      this,
    );
  }
}

abstract class _Usage implements Usage {
  const factory _Usage(
      {final int? promptTokens,
      final int? completionTokens,
      final int? totalTokens}) = _$UsageImpl;

  factory _Usage.fromJson(Map<String, dynamic> json) = _$UsageImpl.fromJson;

  @override
  int? get promptTokens;
  @override
  int? get completionTokens;
  @override
  int? get totalTokens;
  @override
  @JsonKey(ignore: true)
  _$$UsageImplCopyWith<_$UsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
