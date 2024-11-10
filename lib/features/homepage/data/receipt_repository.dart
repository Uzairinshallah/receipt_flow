import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../core/util/utils.dart';
import '../../model/receipt_model.dart';
import '../domain/receipt_impl.dart';

class UserRepositoryImpl implements UserRepository {
  final String baseUrl;

  UserRepositoryImpl({required this.baseUrl});

  @override
  Future<ReceiptModel?> uploadReceipt(String receiptImage) async {
    var dio = Dio();
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));


    var formData = FormData();

    // if (receiptImage.existsSync()) {
      formData.files.add(MapEntry(
        'receipt',
        MultipartFile.fromFileSync(receiptImage,
            filename: receiptImage.split(Platform.pathSeparator).last,
            contentType: DioMediaType("image","jpg")
        ),
      ));
    ReceiptModel? receipt;
      try {
        Response response = await dio.post(
          baseUrl,
          data: formData,
        );

        if (response.statusCode == 200) {
          var responseData = response.data;
          if (responseData is String) {
            responseData = jsonDecode(responseData);
          }

          receipt = ReceiptModel.fromJson(responseData);
          Utils.showToast("Upload successful");

          debugPrint('Upload successful');
          debugPrint('Receipt ID: ${response.data}');
          debugPrint('Receipt URL: ${receipt.receipt?.currency}');
        } else {
          Utils.showToast("Upload failed: ${response.statusCode} - ${response.data}");
          debugPrint('Upload failed: ${response.statusCode} - ${response.data}');
        }
      } catch (e) {
        Utils.showToast("Error occurred during upload ");

      }
      return receipt;
    // } else {
    //   debugPrint('File does not exist');
    // }
  }

}


