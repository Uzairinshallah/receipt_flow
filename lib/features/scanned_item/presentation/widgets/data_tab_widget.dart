import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:receipt_flow/core/util/utils.dart';
import 'package:receipt_flow/features/custom_widgets/custom_text.dart';

class DataTabWidget extends StatelessWidget {
  DataTabWidget({super.key});

  final List<String> headings = [
    "Category",
    "Type",
    "Owner",
    "Reference",
    "Supplier",
    "Currency",
    "Total Amount"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // List of headings
        20.verticalSpace,
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: headings.length,
            separatorBuilder: (context, index) => const Divider(
              color: Colors.grey,
              height: .5,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: Utils.horizontalPadding()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: headings[index],
                      fontWeight: FontWeight.w600,
                    ),
                    const Icon(Icons.arrow_forward_ios, size: 16),
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
