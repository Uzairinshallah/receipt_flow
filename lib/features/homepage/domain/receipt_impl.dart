import 'dart:io';

abstract class UserRepository {
  Future<void> uploadReceipt(File receiptImage);
}
