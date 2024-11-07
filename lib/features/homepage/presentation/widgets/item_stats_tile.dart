import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:receipt_flow/core/util/app_colors.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';

import '../../../../core/util/utils.dart';

class ItemStatsTile extends StatelessWidget {
  const ItemStatsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Utils.horizontalPadding(),
      ),
      child: ListTile(
        leading: Container(
          height: 10.h,
          width: 10.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.secondaryColor,
            ),
          ),
        ),
        title: const CustomText(text: "Walmart", fontWeight: FontWeight.w600,),
        subtitle: const CustomText(text: "\$49.9",),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CustomText(text: "Sep 11, 2024",),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h,),
              decoration: BoxDecoration(
                color: AppColors.yellow,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: CustomText(text: LocaleKeys.welcome, size: 14.w, fontWeight: FontWeight.w600,),
            ),
          ],
        ),

      ),
    );
  }
}
