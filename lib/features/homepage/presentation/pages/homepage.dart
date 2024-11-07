import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/core/util/utils.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';
import 'package:receipt_flow/features/homepage/presentation/widgets/item_stats_tile.dart';
import 'package:receipt_flow/features/homepage/presentation/widgets/loading_item_tile.dart';

import '../../../../core/util/app_colors.dart';
import '../../../../core/util/app_images.dart';
import '../../../custom_widgets/custom_png_image.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Utils.topPadding().verticalSpace,
          Padding(
            padding: EdgeInsets.all(Utils.horizontalPadding()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  text: LocaleKeys.recent,
                  color: AppColors.mediumTextBlack,
                  fontWeight: FontWeight.w600,
                ),
                Row(
                  children: [
                    const CustomText(
                      text: LocaleKeys.viewAll,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const LoadingItemTile(title: LocaleKeys.extractingItem, ),
                const LoadingItemTile(title: LocaleKeys.uploadingItem, ),
                const ItemStatsTile(),
                GetPngImage(
                  imagePath: AppImages.file,
                  height: 150.h,
                  imageCol: AppColors.greyBg.withOpacity(.3),
                ),
                20.verticalSpace,
                const CustomText(
                  text: LocaleKeys.noRecentFiles,
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
                      text: LocaleKeys.scanNewDocs,
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
