import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:receipt_flow/core/util/app_colors.dart';
import 'package:receipt_flow/features/auth/provider/onboarding_provider.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';
import '../../../core/enums/employee_count_enum.dart';
import '../../../core/util/utils.dart';
import 'continue_button_widget.dart';
class AboutCompanyWidget extends StatelessWidget {
  AboutCompanyWidget({super.key});
  final List<EmployeeCountEnum> employeeCounts = EmployeeCountEnum.values;

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
                text: "About your company",
                size: 30.w,
                fontWeight: FontWeight.w600,
              ),
              20.verticalSpace,
              CustomText(
                text: "Tell us more so that we can cater your experience",
                size: 20.w,
                fontWeight: FontWeight.w600,
              ),
              20.verticalSpace,
              CustomText(
                text: "How many employees do you have?",
                size: 20.w,
                fontWeight: FontWeight.w600,
              ),
              10.verticalSpace,

              SizedBox(
                height: 400.h,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.6,
                  ),
                  itemCount: employeeCounts.length,
                  itemBuilder: (context, index) {
                    final employeeCount = employeeCounts[index];
                    return Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r),
                        side: BorderSide(
                          color: AppColors.lightTextBlack.withOpacity(.6),
                          width: 1,
                        ),
                      ),
                      child: SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(
                            employeeCount.label,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        );
      },
    );
  }
}
