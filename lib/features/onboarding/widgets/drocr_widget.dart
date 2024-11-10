import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';
import '../../../core/util/app_colors.dart';
import '../../../core/util/utils.dart';
import '../../auth/provider/onboarding_provider.dart';
import 'container_icon_widget.dart';
import 'continue_button_widget.dart';

class DrocrWidget extends StatelessWidget {
  DrocrWidget({super.key});



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
                text: LocaleKeys.howWillYouUseDrocr,
                size: 30.w,
                fontWeight: FontWeight.w600,
              ),
              30.verticalSpace,
              CustomText(
                text: LocaleKeys.tellUsMoreSoThatWeCanCaterYourExperience,
                size: 16.w,
                textAlign: TextAlign.center,
              ),
              40.verticalSpace,
              CustomText(
                text: LocaleKeys.howManyEmployeesDoYouHave,
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
                  itemCount: provider.drcorList.length,
                  itemBuilder: (context, index) {
                    return Theme(
                      data: Utils.getSplash(context),
                      child: InkWell(
                        onTap: () {
                          provider.setDrocr(provider.drcorList[index]);
                        },
                      child: ContainerIconWidget(title: provider.drcorList[index],
                      isSelected: (provider.selectedDrocr == provider.drcorList[index]) ? true : false,)),
                    );
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
