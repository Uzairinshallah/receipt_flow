import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/util/app_colors.dart';
import '../../../core/util/app_images.dart';
import '../../custom_widgets/custom_png_image.dart';

class ImageContainer extends StatelessWidget {
  final double containerHeight;
  final double imageSize;
  const ImageContainer({super.key, required this.containerHeight, required this.imageSize,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: containerHeight,
      color: AppColors.containerBg,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetPngImage(
            imagePath: AppImages.imagePreview,
            width: imageSize.w,
            height: imageSize.h,
            imageCol: AppColors.greyBg,
          ),
        ],
      ),
    );
  }
}
