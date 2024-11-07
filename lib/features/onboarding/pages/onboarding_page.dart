import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:receipt_flow/features/onboarding/widgets/about_company_widget.dart';
import 'package:receipt_flow/features/onboarding/widgets/accounting_software_widget.dart';
import 'package:receipt_flow/features/onboarding/widgets/drocr_widget.dart';
import 'package:receipt_flow/features/onboarding/widgets/get_started_widget.dart';
import 'package:receipt_flow/features/onboarding/widgets/onboarding_final_widget.dart';

import '../../../core/util/app_colors.dart';
import '../../../core/util/utils.dart';
import '../../auth/provider/onboarding_provider.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {

  List<Widget> pages = [];

  @override
  void initState() {
    // TODO: implement initState
    pages = [
      const LetsGetStarted(),
      AboutCompanyWidget(),
      DrocrWidget(),
      AccountingSoftwareWidget(),
      const OnboardingFinalWidget()

    ];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => OnboardingProvider(),
      child: Consumer<OnboardingProvider>(
        builder: (context, provider, child) {
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: Utils.horizontalPadding(), vertical: 50.h),
              child: Column(
                children: [
                  20.verticalSpace,
                  const SizedBox(height: 16),
                  Expanded(
                    child: PageView(
                      controller: provider.pageController,
                      physics: const NeverScrollableScrollPhysics(),
                      onPageChanged: (value) {
                        provider.onPageChanged(value);
                      },
                      children: pages,
                    ),
                  ),
                  _buildLinearProgressIndicator(provider), // Line indicator at the top

                ],
              ),
            ),
          );
        },
      ),
    );








  }

  Widget _buildLinearProgressIndicator(OnboardingProvider provider) {
    return Builder(
      builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (provider.currentPage == 0) ? const SizedBox() : InkWell(
                onTap: () {
                  if (provider.currentPage == 0) {
                    Navigator.of(context).pop();
                    return;
                  }
                  provider.navToPreviousPage();
                },
                child: const Icon(Icons.arrow_back)),
            15.horizontalSpace,
            Expanded(
              child: SizedBox(
                height: 10.h,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: (provider.currentPage + 1) / pages.length,
                    backgroundColor: Colors.grey.shade300,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.primaryColor.withOpacity(.7)),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }


}






