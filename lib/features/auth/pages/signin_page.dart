import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/features/auth/pages/create_account_page.dart';

import '../../../core/util/app_colors.dart';
import '../../../core/util/app_images.dart';
import '../../../core/util/app_routes.dart';
import '../../../core/util/utils.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Utils.horizontalPadding()),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    100.verticalSpace,
                    const CustomText(
                      text: LocaleKeys.welcomeBack,
                    ),

                    const CustomText(
                      text: LocaleKeys.signIn,
                      size: 28,
                      fontWeight: FontWeight.w600,
                    ),
                    100.verticalSpace,
                    CustomTextField(
                      hint: LocaleKeys.email,
                      onChanged: (p0) {},
                      validator: (_) {
                      },
                      controller: emailController,
                      borderColor: AppColors.greyBg,
                      suffixIcon: const Icon(
                        Icons.email_outlined,
                        color: AppColors.greyBg,
                        size: 16,
                      ),
                    ),
                    8.verticalSpace,
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: CustomText(
                          text: LocaleKeys.forgotPassword,
                          color: AppColors.primaryColor,
                          size: 16.sp,
                        ),
                      ),
                    ),
                    50.verticalSpace,
                    CustomButton(
                      text: LocaleKeys.signIn,
                      textColor: Colors.white,
                      onPressed: () {},
                    ),

                    40.verticalSpace,
                    Row(
                      children: [
                        const Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: const CustomText(text: LocaleKeys.orLoginWith),
                        ),
                        const Expanded(child: Divider()),
                      ],
                    ),
                    40.verticalSpace,
                    CustomTextIconButton(
                      text: LocaleKeys.signInWithGoogle,
                      isEnable: true,
                      imagePath: AppImages.googleLogo,
                      textColor: AppColors.black,
                      borderCol: AppColors.primaryColor,
                      background: Colors.white,
                      onPressed: () {

                      },
                    ),
                    10.verticalSpace,
                    CustomTextIconButton(
                      text: LocaleKeys.signInWithApple,
                      isEnable: true,
                      imagePath: AppImages.appleLogo,
                      textColor: AppColors.black,
                      borderCol: AppColors.primaryColor,
                      background: Colors.white,
                      onPressed: () {},
                    ),

                  ],
                ),
              ),
            ),


            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge,
                  children: [
                    const TextSpan(
                      text: "${LocaleKeys.dontHaveAnAccount}? ",
                    ),
                    TextSpan(
                      text: LocaleKeys.signUp,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          AppRoutes.pushReplacement(
                            context,
                            PageTransitionType.fade,
                            CreateAccount(),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }
}

