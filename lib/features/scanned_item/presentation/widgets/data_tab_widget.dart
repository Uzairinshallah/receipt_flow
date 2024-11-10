import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:receipt_flow/core/util/utils.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';

import '../../../model/receipt_model.dart';

class DataTabWidget extends StatelessWidget {
  final ReceiptModel receiptModel;
  final Map<String, String> headingData;

  DataTabWidget({super.key, required this.receiptModel})
      : headingData = {
    "Category": receiptModel.receipt?.expenseCategory ?? "N/A",
    "Type": receiptModel.receipt?.ocrType?.toUpperCase() ?? "N/A",
    "Owner": receiptModel.receipt?.merchantName.toString() ?? "Not Found",
    "Payment Method": receiptModel.receipt?.paymentMethod ?? "Not Found",
    "Discount": receiptModel.receipt?.discounts.toString() ?? "No Discount",
    "Currency": receiptModel.receipt?.currency ?? "USD",
    "Total Amount": "\$${receiptModel.receipt?.total?.toString()}",
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20), // Use SizedBox instead of verticalSpace for spacing
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: headingData.length,
            separatorBuilder: (context, index) => const Divider(
              color: Colors.grey,
              height: 0.5,
            ),
            itemBuilder: (context, index) {
              String heading = headingData.keys.elementAt(index);
              String value = headingData.values.elementAt(index);

              return Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: Utils.horizontalPadding()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: heading,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: value,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

