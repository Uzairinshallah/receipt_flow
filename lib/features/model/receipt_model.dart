import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_model.freezed.dart';
part 'receipt_model.g.dart';

@freezed
class ReceiptModel with _$ReceiptModel {
  const factory ReceiptModel({
    Receipt? receipt,
    Usage? usage,
  }) = _ReceiptModel;

  factory ReceiptModel.fromJson(Map<String, dynamic> json) =>
      _$ReceiptModelFromJson(json);
}

@freezed
class Receipt with _$Receipt {
  const factory Receipt({
    String? ocrType,
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
    int? height,
  }) = _Receipt;

  factory Receipt.fromJson(Map<String, dynamic> json) =>
      _$ReceiptFromJson(json);
}

@freezed
class Usage with _$Usage {
  const factory Usage({
    int? promptTokens,
    int? completionTokens,
    int? totalTokens,
  }) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) =>
      _$UsageFromJson(json);
}
