import 'package:flutter/material.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(text: LocaleKeys.settingsModule, textAlign: TextAlign.center, fontWeight: FontWeight.w600,)
        ],
      ),
    );
  }
}
