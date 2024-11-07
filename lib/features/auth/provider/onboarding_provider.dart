import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:receipt_flow/core/enums/employee_count_enum.dart';

import '../../../core/mixins/easy_loading_mixin.dart';

class OnboardingProvider with ChangeNotifier, EasyLoadingMixin {
  final pageController = PageController();
  int currentPage = 0;
  int groupValue = 0; // Default selected option index

  String? selectedDrocr;

  void onSpokenLanguageSelect(String? drocr) {
    selectedDrocr = drocr;
    notifyListeners();
  }

  void onPageChanged(int page) {
    pageController.jumpToPage(page);
    currentPage = page;
    pageController.notifyListeners();
    notifyListeners();
  }

  void setCurrentPage(int index) {
    currentPage = index;
    notifyListeners();
  }


  void setGroupValue(int index) {
    groupValue = index;
    notifyListeners();
  }

  void navToNextPage() {
    final currentPage = pageController.page?.toInt() ?? 0;
    final nextPage = currentPage + 1;
    onPageChanged(nextPage);
    notifyListeners();
  }

  String? selectedSoftware;
  bool? haveAccountant;

  void onCourseSelected(String? software) {
    selectedSoftware = software;
    notifyListeners();
  }

  void onCountrySelected(bool? val) {
    haveAccountant = val;
    notifyListeners();
  }

  EmployeeCountEnum? selectedEmployeeCount;

  void onCourseLevelSelected(EmployeeCountEnum value) {
    selectedEmployeeCount = value;
    notifyListeners();
  }

  void navToPreviousPage() {
    final currentPage = pageController.page?.toInt() ?? 0;
    final previousPage = currentPage - 1;
    onPageChanged(previousPage);
  }
}
