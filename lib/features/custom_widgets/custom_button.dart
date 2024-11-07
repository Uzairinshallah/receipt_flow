import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/util/app_colors.dart';
import 'custom_png_image.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? borderCol;
  final double? textSize;
  final Color? background;
  final Function()? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    this.textColor = Colors.white,
    this.textSize,
    this.borderCol,
    this.background,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap:onPressed,
        child: Tooltip(
          message: text,
          child: Container(
            width: double.infinity,
            height: 54,
            decoration: BoxDecoration(
              color: (background != null)
                  ? background
                  : AppColors.primaryColor,
              border: Border.all(color: borderCol ?? Colors.transparent),
              borderRadius: BorderRadius.circular(8.r),
              ),
            child: Row(
              children: [
                Flexible(
                  child: Align(
                      alignment: Alignment.center,
                      child: CustomText(
                        text: text,
                        size: textSize ?? 19.sp,
                        fontWeight: FontWeight.w700,
                        color: textColor,
                        textAlign: TextAlign.center,
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}




class CustomTextIconButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? textSize;
  final Color? background;
  final Color? borderCol;
  final String? imagePath;
  final IconData? rightIcon;
  final Color? imageColor;
  final bool? isEnable;
  final Function()? onPressed;

  const CustomTextIconButton({super.key,
    required this.text,
    this.textColor,
    this.textSize,
    this.background,
    this.onPressed,
    this.imagePath,
    this.rightIcon,
    this.imageColor,
    this.borderCol,
    this.isEnable,
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(
        onTap:  onPressed,
        child: Container(
          height: 54,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            color: (background != null) ? background:   (isEnable == true) ? AppColors.primaryColor: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(8.r),
            border: (borderCol != null) ? Border.all(color: borderCol!) : null,
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (imagePath != null) ? GetPngImage(imagePath: imagePath!, width: 25.w, imageCol: imageColor,) : const SizedBox(),
              10.horizontalSpace,
              CustomText(
                text: text,
                size: textSize ?? 18.sp,
                fontWeight: FontWeight.w600,
                color: textColor,
                textAlign: TextAlign.center,
              ),
              10.horizontalSpace,
              (rightIcon != null) ? Icon(rightIcon, color: AppColors.whiteColor,) : const SizedBox(),

            ],
          ),
        )
    );
  }
}