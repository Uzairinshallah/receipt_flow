import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../model/receipt_model.dart';
import '../domain/receipt_impl.dart';

class UserRepositoryImpl implements UserRepository {
  final String baseUrl;

  UserRepositoryImpl({required this.baseUrl});

  @override
  Future<void> uploadReceipt(File receiptImage) async {
    var dio = Dio();
    print("receiptImage.path.split(Platform.pathSeparator).last");
    print(receiptImage.path.split(Platform.pathSeparator).last);
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));


    var formData = FormData();

    if (receiptImage.existsSync()) {
      formData.files.add(MapEntry(
        'receipt',
        MultipartFile.fromFileSync(receiptImage.path,
            filename: receiptImage.path.split(Platform.pathSeparator).last,
            contentType: DioMediaType("image","jpg")
        ),
      ));

      try {
        Response response = await dio.post(
          'https://expressjs-hufk.onrender.com/parse',
          data: formData,
        );

        if (response.statusCode == 200) {
          var responseData = response.data;
          if (responseData is String) {
            responseData = jsonDecode(responseData);
          }

          ReceiptModel receipt = ReceiptModel.fromJson(responseData);

          debugPrint('Upload successful');
          debugPrint('Receipt ID: ${response.data}');
          debugPrint('Receipt URL: ${receipt.receipt?.currency}');
        } else {
          debugPrint('Upload failed: ${response.statusCode} - ${response.data}');
        }
      } catch (e) {
        debugPrint('Error occurred during upload: $e');
      }
    } else {
      debugPrint('File does not exist');
    }
  }

}


