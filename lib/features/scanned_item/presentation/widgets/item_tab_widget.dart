import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/app_colors.dart';
import '../../../../core/util/app_images.dart';
import '../../../../core/util/utils.dart';
import '../../../custom_widgets/custom_png_image.dart';
import '../../../custom_widgets/custom_text.dart';

class ItemTabWidget extends StatelessWidget {
  const ItemTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Utils.horizontalPadding()),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                GetPngImage(
                  imagePath: AppImages.file,
                  height: 150.h,
                  imageCol: AppColors.greyBg.withOpacity(.3),
                ),
                20.verticalSpace,
                const CustomText(
                  text: "No Items Detected",
                  color: AppColors.lightTextBlack,
                ),
                20.verticalSpace,
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.secondaryColor.withOpacity(.3),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                    child: const CustomText(
                      text: "Add Item",
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
