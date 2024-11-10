import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';
import '../../../core/util/utils.dart';
import '../../auth/provider/onboarding_provider.dart';
import 'container_icon_widget.dart';
import 'continue_button_widget.dart';

class AccountingSoftwareWidget extends StatelessWidget {
  AccountingSoftwareWidget({super.key});

  final List<String> softwareList = ["I don't use any", "Xero"];
  // Default selected option

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Utils.getSplash(context),
      child: Consumer<OnboardingProvider>(
        builder: (context, provider, child) {
          return ContinueButtonView(
            rightIcon: Icons.arrow_forward,
            onContinuePressed: () {
              provider.navToNextPage();

            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: LocaleKeys.whichAccountingSoftwareDoYouUse,
                  size: 30.w,
                  fontWeight: FontWeight.w600,
                ),

                SizedBox(
                  height: 250.h,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemCount: softwareList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          provider.setSoftware(softwareList[index]);
                        },
                          child: ContainerIconWidget(title: softwareList[index], isSelected: (provider.selectedSoftware == softwareList[index]) ? true : false,));
                    },
                  ),
                ),
                10.verticalSpace,
                CustomText(
                  text: LocaleKeys.doYouHaveAnyAccountant,
                  size: 16.w,
                  fontWeight: FontWeight.w700,
                ),
                10.verticalSpace,
                _myRadioButton(
                  title: LocaleKeys.yes,
                  value: 0,
                  onChanged: (newValue) {
                      if(newValue != null){
                        provider.setGroupValue(newValue);
                      }
                  },
                  provider: provider,
                ),
                _myRadioButton(
                  title: LocaleKeys.no,
                  value: 1,
                  onChanged: (newValue) {
                    if(newValue != null){
                      provider.setGroupValue(newValue);
                    }
                  },
                  provider: provider,
                ),
              ],
            ),
          );
        },
      ),
    );
  }



  Widget _myRadioButton({
    required String title,
    required int value,
    required Function(int?) onChanged,
    required OnboardingProvider provider,
  }) {
    return RadioListTile(
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity(vertical: -4), // Reduces the height
      value: value,
      groupValue: provider.groupValue,
      onChanged: onChanged,
      title: Text(title),
    );
  }


}
