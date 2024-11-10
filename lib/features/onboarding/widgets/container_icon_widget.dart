import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/util/app_colors.dart';
import '../../custom_widgets/custom_text.dart';

class ContainerIconWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  const ContainerIconWidget({super.key, required this.title, required this.isSelected,});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: isSelected ? AppColors.primaryLight : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
        side: BorderSide(
          color: isSelected ? AppColors.primaryColor : AppColors.lightTextBlack.withOpacity(.3),
          width: 2,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              size: 50.h,
              color: AppColors.greyBg,
            ),
            Flexible(
                child: CustomText(
                  text: title,
                  textAlign: TextAlign.center,
                  size: 16.w,
                  maxLines: 2,
                ))
          ],
        ),
      ),
    );;
  }
}
