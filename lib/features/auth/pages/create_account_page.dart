import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/features/auth/pages/signin_page.dart';

import '../../../core/util/app_colors.dart';
import '../../../core/util/app_images.dart';
import '../../../core/util/app_routes.dart';
import '../../../core/util/utils.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_text.dart';
import '../../custom_widgets/custom_text_field.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({super.key});
  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
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
                    80.verticalSpace,
                    const CustomText(
                      text: LocaleKeys.welcome,
                    ),

                    const CustomText(
                      text: LocaleKeys.startAFreeTrail,
                      size: 28,
                      fontWeight: FontWeight.w600,
                    ),
                    20.verticalSpace,
                    CustomTextField(
                      hint: LocaleKeys.selectCountry,
                      onChanged: (p0) {},
                      validator: (_) {
                      },
                      controller: emailController,
                      borderColor: AppColors.greyBg,
                    ),
                    12.verticalSpace,
                    getFieldTitle(LocaleKeys.emailAddress),
                    CustomTextField(
                      hint: '',
                      onChanged: (p0) {},
                      validator: (_) {
                      },
                      controller: emailController,
                      borderColor: AppColors.greyBg,
                    ),
                    12.verticalSpace,
                    getFieldTitle(LocaleKeys.firstName),
                    CustomTextField(
                      hint: '',
                      onChanged: (p0) {},
                      validator: (_) {
                      },
                      controller: emailController,
                      borderColor: AppColors.greyBg,
                    ),
                    12.verticalSpace,
                    getFieldTitle(LocaleKeys.lastName),
                    CustomTextField(
                      hint: '',
                      onChanged: (p0) {},
                      validator: (_) {
                      },
                      controller: emailController,
                      borderColor: AppColors.greyBg,
                    ),
                    40.verticalSpace,
                    CustomButton(
                      text: LocaleKeys.createAccount,
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                    30.verticalSpace,
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
                    30.verticalSpace,
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
                      text: LocaleKeys.signIn,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          AppRoutes.pushReplacement(
                            context,
                            PageTransitionType.fade,
                            LoginPage(),
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
  Align getFieldTitle(String title) => Align(alignment: Alignment.topLeft, child: CustomText(text: " $title", size: 14.sp, fontWeight: FontWeight.w600,),);

}
