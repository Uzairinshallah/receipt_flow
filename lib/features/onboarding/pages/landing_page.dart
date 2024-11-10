import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:receipt_flow/core/util/app_images.dart';
import 'package:receipt_flow/core/util/utils.dart';
import 'package:receipt_flow/features/auth/pages/signin_page.dart';
import 'package:receipt_flow/features/custom_widgets/custom_button.dart';
import 'package:receipt_flow/features/onboarding/pages/onboarding_page.dart';

import '../../../core/util/app_colors.dart';
import '../../../core/util/app_routes.dart';
import '../../../core/util/app_strings.dart';
import '../../custom_widgets/custom_png_image.dart';
import '../widgets/image_container.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Utils.horizontalPadding(),
          ),
          child: Column(
            children: [
              80.verticalSpace,
              ImageContainer(containerHeight: Utils.screenFullHeight(context) * .6, imageSize: 100,),
              40.verticalSpace,
              CustomButton(
                text: LocaleKeys.startAFreeTrail,
                onPressed: () {
                  AppRoutes.pushReplacement(
                    context,
                    PageTransitionType.fade,
                    const OnboardingPage(),
                  );
                },
              ),
              20.verticalSpace,
              CustomButton(
                text: LocaleKeys.signIn,
                onPressed: () {
                  AppRoutes.push(
                    context,
                    PageTransitionType.fade,
                    LoginPage(),
                  );
                },
                background: Colors.transparent,
                borderCol: AppColors.primaryColor,
                textColor: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


