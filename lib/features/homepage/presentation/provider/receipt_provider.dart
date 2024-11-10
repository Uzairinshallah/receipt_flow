import 'dart:io';

import 'package:flutter/cupertino.dart';

import '../../../../core/util/utils.dart';
import '../../../model/receipt_model.dart';
import '../../domain/receipt_impl.dart';

class ReceiptProvider with ChangeNotifier {
  final UserRepository userRepository;

  ReceiptProvider({required this.userRepository});

  bool _isLoading = false;
  List<ReceiptModel> _receiptList = [];
  bool get isLoading => _isLoading;
  List<ReceiptModel> get receiptList => _receiptList;

  Future<void> uploadReceiptImage(String receiptImage) async {
    _isLoading = true;
    notifyListeners();

    try {
      ReceiptModel? receiptModel = await userRepository.uploadReceipt(receiptImage);
      if(receiptModel != null){
        _receiptList.add(receiptModel);
        notifyListeners();
      }
    } catch (e) {
      Utils.showToast("Error: $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}