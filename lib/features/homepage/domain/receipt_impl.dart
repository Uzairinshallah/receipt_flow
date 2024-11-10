import 'dart:io';

import 'package:receipt_flow/features/model/receipt_model.dart';

abstract class UserRepository {
  Future<ReceiptModel?> uploadReceipt(String receiptImage);
}
