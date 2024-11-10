import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';
import 'package:receipt_flow/features/homepage/presentation/pages/homepage.dart';
import 'package:receipt_flow/features/onboarding/widgets/image_container.dart';
import '../../../core/util/app_routes.dart';
import '../../../core/util/utils.dart';
import '../../homepage/presentation/pages/main_screen.dart';
import 'continue_button_widget.dart';

class OnboardingFinalWidget extends StatelessWidget {
  const OnboardingFinalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContinueButtonView(
      title: LocaleKeys.explore,
      rightIcon: Icons.arrow_forward,
      onContinuePressed: () {
        AppRoutes.pushAndRemoveUntil(
          context,
          PageTransitionType.fade,
          MainScreen(),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageContainer(containerHeight: Utils.screenFullHeight(context) * .3, imageSize: 80,),
          30.verticalSpace,

          CustomText(
            text: LocaleKeys.welcome,
            size: 30.w,
            fontWeight: FontWeight.w600,
          ),
          10.verticalSpace,
          CustomText(
            text: LocaleKeys.getStartedWithYourFreeTrail,
            size: 20.w,
            fontWeight: FontWeight.w600,
          ),

        ],
      ),
    );
  }
}
