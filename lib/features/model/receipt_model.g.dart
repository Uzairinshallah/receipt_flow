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
      ocrType: json['ocrType'] as String?,
      ocrConfidence: (json['ocrConfidence'] as num?)?.toInt(),
      date: json['date'] as String?,
      time: json['time'] as String?,
      confidence: (json['confidence'] as num?)?.toInt(),
      expenseCategory: json['expenseCategory'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      subtotal: (json['subtotal'] as num?)?.toDouble(),
      discounts: (json['discounts'] as num?)?.toInt(),
      tax: (json['tax'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toDouble(),
      serviceCharge: (json['serviceCharge'] as num?)?.toInt(),
      tip: (json['tip'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      country: json['country'] as String?,
      merchantName: json['merchantName'] as String?,
      merchantAddress: json['merchantAddress'] as String?,
      merchantPhone: json['merchantPhone'] as String?,
      merchantWebsite: json['merchantWebsite'] as String?,
      merchantTaxRegNo: json['merchantTaxRegNo'] as String?,
      identifier: json['identifier'] as String?,
      imageUrl: json['imageUrl'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReceiptImplToJson(_$ReceiptImpl instance) =>
    <String, dynamic>{
      'ocrType': instance.ocrType,
      'ocrConfidence': instance.ocrConfidence,
      'date': instance.date,
      'time': instance.time,
      'confidence': instance.confidence,
      'expenseCategory': instance.expenseCategory,
      'paymentMethod': instance.paymentMethod,
      'subtotal': instance.subtotal,
      'discounts': instance.discounts,
      'tax': instance.tax,
      'total': instance.total,
      'serviceCharge': instance.serviceCharge,
      'tip': instance.tip,
      'currency': instance.currency,
      'country': instance.country,
      'merchantName': instance.merchantName,
      'merchantAddress': instance.merchantAddress,
      'merchantPhone': instance.merchantPhone,
      'merchantWebsite': instance.merchantWebsite,
      'merchantTaxRegNo': instance.merchantTaxRegNo,
      'identifier': instance.identifier,
      'imageUrl': instance.imageUrl,
      'width': instance.width,
      'height': instance.height,
    };

_$UsageImpl _$$UsageImplFromJson(Map<String, dynamic> json) => _$UsageImpl(
      promptTokens: (json['promptTokens'] as num?)?.toInt(),
      completionTokens: (json['completionTokens'] as num?)?.toInt(),
      totalTokens: (json['totalTokens'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UsageImplToJson(_$UsageImpl instance) =>
    <String, dynamic>{
      'promptTokens': instance.promptTokens,
      'completionTokens': instance.completionTokens,
      'totalTokens': instance.totalTokens,
    };
