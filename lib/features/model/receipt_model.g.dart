// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceiptModelImpl _$$ReceiptModelImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptModelImpl(
      receipt: json['receipt'] == null
          ? null
          : Receipt.fromJson(json['receipt'] as Map<String, dynamic>),
      usage: json['usage'] == null
          ? null
          : Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReceiptModelImplToJson(_$ReceiptModelImpl instance) =>
    <String, dynamic>{
      'receipt': instance.receipt,
      'usage': instance.usage,
    };

_$ReceiptImpl _$$ReceiptImplFromJson(Map<String, dynamic> json) =>
    _$ReceiptImpl(
      ocrType: json['ocr_type'] as String?,
      ocrConfidence: (json['ocr_confidence'] as num?)?.toInt(),
      date: json['date'] as String?,
      time: json['time'] as String?,
      confidence: (json['confidence'] as num?)?.toInt(),
      expenseCategory: json['expense_category'] as String?,
      paymentMethod: json['payment_method'] as String?,
      subtotal: (json['subtotal'] as num?)?.toDouble(),
      discounts: (json['discounts'] as num?)?.toInt(),
      tax: (json['tax'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toDouble(),
      serviceCharge: (json['service_charge'] as num?)?.toInt(),
      tip: (json['tip'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      country: json['country'] as String?,
      merchantName: json['merchant_name'] as String?,
      merchantAddress: json['merchant_address'] as String?,
      merchantPhone: json['merchant_phone'] as String?,
      merchantWebsite: json['merchant_website'] as String?,
      merchantTaxRegNo: json['merchant_tax_reg_no'] as String?,
      identifier: json['identifier'] as String?,
      imageUrl: json['image_url'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReceiptImplToJson(_$ReceiptImpl instance) =>
    <String, dynamic>{
      'ocr_type': instance.ocrType,
      'ocr_confidence': instance.ocrConfidence,
      'date': instance.date,
      'time': instance.time,
      'confidence': instance.confidence,
      'expense_category': instance.expenseCategory,
      'payment_method': instance.paymentMethod,
      'subtotal': instance.subtotal,
      'discounts': instance.discounts,
      'tax': instance.tax,
      'total': instance.total,
      'service_charge': instance.serviceCharge,
      'tip': instance.tip,
      'currency': instance.currency,
      'country': instance.country,
      'merchant_name': instance.merchantName,
      'merchant_address': instance.merchantAddress,
      'merchant_phone': instance.merchantPhone,
      'merchant_website': instance.merchantWebsite,
      'merchant_tax_reg_no': instance.merchantTaxRegNo,
      'identifier': instance.identifier,
      'image_url': instance.imageUrl,
      'width': instance.width,
      'height': instance.height,
    };

_$UsageImpl _$$UsageImplFromJson(Map<String, dynamic> json) => _$UsageImpl(
      promptTokens: (json['prompt_tokens'] as num?)?.toInt(),
      completionTokens: (json['completion_tokens'] as num?)?.toInt(),
      totalTokens: (json['total_tokens'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UsageImplToJson(_$UsageImpl instance) =>
    <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
    };
