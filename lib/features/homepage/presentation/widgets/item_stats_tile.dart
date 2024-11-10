import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:receipt_flow/core/util/app_colors.dart';
import 'package:receipt_flow/core/util/app_images.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';
import 'package:receipt_flow/features/model/receipt_model.dart';

import '../../../../core/util/app_routes.dart';
import '../../../../core/util/utils.dart';
import '../../../scanned_item/presentation/pages/single_item_details_page.dart';

class ItemStatsTile extends StatelessWidget {
  final ReceiptModel receiptModel;
  const ItemStatsTile({super.key, required this.receiptModel,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Utils.horizontalPadding(),
      ),
      child: ListTile(
        onTap: () {
          AppRoutes.push(
            context,
            PageTransitionType.fade,
            SingleItemDetailsPage(
              receiptModel: receiptModel,
            ),
          );
        },
        leading: Container(
          height: 50.h,
          width: 50.w,
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
            (receiptModel.receipt != null && receiptModel.receipt?.imageUrl != null) ?
            NetworkImage(receiptModel.receipt!.imageUrl!) : const AssetImage(AppImages.imagePreview),
            ),
          ),
        ),
        title: CustomText(text: "${LocaleKeys.ocrType}: ${receiptModel.receipt?.ocrType ?? LocaleKeys.notFound}", fontWeight: FontWeight.w600, size: 16.w,),
        subtitle: CustomText(text: "${LocaleKeys.subTotal} ${receiptModel.receipt?.imageUrl ?? "0"}\$", size: 14.sp,),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h,),
              decoration: BoxDecoration(
                color: AppColors.yellow,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: CustomText(text: LocaleKeys.toReview, size: 14.w, fontWeight: FontWeight.w600,),
            ),
          ],
        ),

      ),
    );
  }
}
