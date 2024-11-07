import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/app_colors.dart';
import '../../../../core/util/utils.dart';
import '../../../custom_widgets/custom_text.dart';

class ChooseCategoryPage extends StatelessWidget {
  ChooseCategoryPage({super.key});

  final List<String> listOfStrings = [
    "None",
    "Accommodation",
    "Food",
    "It & Technology",
    "Motor Expanse",
    "None",
    "None",
    "None",
    "None",
    "None",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Utils.topPadding().verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Utils.horizontalPadding()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 25.h,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search ...',
                      hintStyle: TextStyle(
                        fontSize: 20.w,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const CustomText(
                      text: "View All",
                      color: AppColors.mediumTextBlack,
                      fontWeight: FontWeight.w600,
                      textDecoration: TextDecoration.underline,
                    ),
                    5.horizontalSpace,
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20.w,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              shrinkWrap: true,
              itemCount: listOfStrings.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    print('Selected: ${listOfStrings[index]}');
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: Utils.horizontalPadding(),),
                    child: CustomText(text: listOfStrings[index]),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(color: AppColors.lightTextBlack,);
              },
            ),
          ),
        ],
      ),
    );
  }
}
