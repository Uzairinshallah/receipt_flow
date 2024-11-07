import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:receipt_flow/features/auth/provider/onboarding_provider.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';
import '../../../core/util/utils.dart';
import 'continue_button_widget.dart';
import 'image_container.dart';

class LetsGetStarted extends StatelessWidget {
  const LetsGetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingProvider>(
      builder: (context, provider, child) {
        return ContinueButtonView(
          rightIcon: Icons.arrow_forward,
          onContinuePressed: () {
            provider.navToNextPage();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: "Let's get started",
                size: 30.w,
                fontWeight: FontWeight.w600,
              ),
              30.verticalSpace,
              ImageContainer(containerHeight: Utils.screenFullHeight(context) * .56, imageSize: 100,),
            ],
          ),
        );
      },
    );
  }
}
