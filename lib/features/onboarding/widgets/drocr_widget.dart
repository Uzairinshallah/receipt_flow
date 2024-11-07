import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';
import '../../../core/util/app_colors.dart';
import '../../../core/util/utils.dart';
import '../../auth/provider/onboarding_provider.dart';
import 'container_icon_widget.dart';
import 'continue_button_widget.dart';

class DrocrWidget extends StatelessWidget {
  DrocrWidget({super.key});

  final drcorList = [
    "Expense Management",
    "Culture and store receipts",
    "Accounting and bookkeeping",
    "Other"
  ];

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
                text: "How will you use drocr",
                size: 30.w,
                fontWeight: FontWeight.w600,
              ),
              30.verticalSpace,
              CustomText(
                text: "Tell us more so that we can cater your experience",
                size: 16.w,
                textAlign: TextAlign.center,
              ),
              40.verticalSpace,
              CustomText(
                text: "How many employees do you have?",
                textAlign: TextAlign.center,
                size: 16.w,
              ),
              10.verticalSpace,
              SizedBox(
                height: 450.h,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemCount: drcorList.length,
                  itemBuilder: (context, index) {
                    return ContainerIconWidget(title: drcorList[index],);
                  },
                ),
              )

            ],
          ),
        );
      },
    );
  }
}
