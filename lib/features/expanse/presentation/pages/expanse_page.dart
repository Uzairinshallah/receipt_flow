import 'package:flutter/material.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';

class ExpansePage extends StatelessWidget {
  const ExpansePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(text: LocaleKeys.expanseModule, )
      ],
    );
  }
}
