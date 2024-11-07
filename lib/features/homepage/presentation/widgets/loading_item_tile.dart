import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';

import '../../../../core/util/utils.dart';

class LoadingItemTile extends StatelessWidget {
  final String title;
  const LoadingItemTile({super.key, required this.title,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Utils.horizontalPadding()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 25.h, width: 25.w, child: const CircularProgressIndicator()),
              20.horizontalSpace,
              CustomText(text: title, fontWeight: FontWeight.w600, size: 18.w, ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: const Divider(),
        ),
      ],
    );
  }
}
