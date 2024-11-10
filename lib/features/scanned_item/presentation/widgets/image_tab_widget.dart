import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/util/app_colors.dart';
import '../../../../core/util/app_images.dart';
import '../../../../core/util/utils.dart';
import '../../../custom_widgets/custom_png_image.dart';
import '../../../custom_widgets/custom_text.dart';

class ImageTabWidget extends StatelessWidget {
  final String? imageUrl;
  const ImageTabWidget({super.key, this.imageUrl,});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: Utils.horizontalPadding()),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [

                Container(
                  height: 400.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(10.w,),
                    border: Border.all(
                      color: AppColors.secondaryColor,
                      width: 2,
                    ),
                  ),
                  child:  ClipRRect(
                    child: Image(image:
                    (imageUrl != null) ?
                    NetworkImage(imageUrl!)
                            : const AssetImage(AppImages.imagePreview),
                      fit: (imageUrl != null) ? BoxFit.fill : BoxFit.contain,
                    ),
                  ),
                ),
                20.verticalSpace,
                (imageUrl != null) ? const CustomText(
                  text: "No Image Found",
                  color: AppColors.lightTextBlack,
                ) : const SizedBox(),
                20.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
