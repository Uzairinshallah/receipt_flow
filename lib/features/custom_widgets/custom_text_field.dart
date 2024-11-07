import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/util/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Color? borderColor;
  final bool? isNumeric;
  final bool? isObscure;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final AutovalidateMode? autoValidateMode;

  bool isEnabled = true;
  final bool autoFocus;
  CustomTextField({
    super.key,
    this.onChanged,
    this.suffixIcon,
    this.prefixIcon,
    this.isObscure = false,
    this.isNumeric,
    this.borderColor = AppColors.fieldBorder,
    required this.hint,
    required this.controller,
    this.isEnabled = true,
    this.validator,
    this.autoValidateMode,
    this.autoFocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      autofocus: autoFocus,
      validator: validator,
      autovalidateMode: autoValidateMode,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      obscureText: isObscure ?? false,
      enabled: isEnabled,
      controller: controller,
      onChanged: onChanged,
      style: GoogleFonts.inter(
        fontSize: 14.sp,
      ),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconConstraints: BoxConstraints(minWidth: 35.w),
        suffixIconConstraints: BoxConstraints(minWidth: 35.w),
        hintText: hint,
        counterText: "",
        isDense: true,
        hintStyle: TextStyle(
          color: AppColors.mediumTextBlack.withOpacity(.4),
          fontSize: 16.sp,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        contentPadding: EdgeInsets.only(top: 15.h, bottom: 15.h, left:  16),
        fillColor: AppColors.fieldBg,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: borderColor ?? AppColors.primaryColor, width: 1.0),
          borderRadius: BorderRadius.circular(6.r),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(
            width: .5,
            color: borderColor ?? AppColors.primaryColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            6.r,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: borderColor ?? AppColors.primaryColor, width: .5),
          borderRadius: BorderRadius.circular(6.r),
        ),
      ),
    );
  }
}