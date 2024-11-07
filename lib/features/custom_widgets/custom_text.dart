import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/util/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    required this.text,
    this.size,
    this.maxLines,
    this.fontWeight,
    this.color,
    this.textOverflow,
    this.textDecoration,
    this.textAlign,
    this.textStyle,
    super.key,
  });
  final String text;
  final double? size;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextOverflow? textOverflow;
  final TextDecoration? textDecoration;
  final Color? color;
  final TextAlign? textAlign;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: text,
      child: Text(text,
          maxLines: (maxLines != null) ? maxLines : null,
          textAlign: textAlign ?? TextAlign.start,
          style: textStyle ??
              GoogleFonts.plusJakartaSans(
                textStyle: TextStyle(
                  color: color ?? Colors.black,
                  fontSize: size ?? 17.w,
                  fontWeight: fontWeight ?? FontWeight.w400,
                  overflow: textOverflow,
                  decoration: textDecoration,
                  decorationColor: AppColors.lightTextBlack,
                  decorationThickness: 2.0,
                ),
              )),
    );
  }
}