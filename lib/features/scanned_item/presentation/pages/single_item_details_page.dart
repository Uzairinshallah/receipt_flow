import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:receipt_flow/features/custom_widgets/custom_button.dart';
import 'package:receipt_flow/features/custom_widgets/custom_png_image.dart';

import '../../../../core/util/app_colors.dart';
import '../../../../core/util/app_images.dart';
import '../../../../core/util/utils.dart';
import '../../../custom_widgets/custom_text.dart';
import '../widgets/data_tab_widget.dart';
import '../widgets/image_tab_widget.dart';
import '../widgets/item_tab_widget.dart';

class SingleItemDetailsPage extends StatefulWidget {
  SingleItemDetailsPage({super.key});

  @override
  _SingleItemDetailsPageState createState() => _SingleItemDetailsPageState();
}

class _SingleItemDetailsPageState extends State<SingleItemDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);

    _tabController.addListener(() {
      if (_tabController.index == 3) {
        _tabController.index = _tabController.previousIndex;
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Column(
          children: [
            // Search Bar
            Container(
              color: AppColors.containerGrey,
              padding: EdgeInsets.only(top: Utils.topPadding(), bottom: 10.h),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Utils.horizontalPadding()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 25.h,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                        const CustomText(text: "Walmart", textDecoration: TextDecoration.underline,),
                        10.horizontalSpace,
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                          decoration: BoxDecoration(
                          color: AppColors.greyBg.withOpacity(.5),
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                          child: const CustomText(text: "Category", color: AppColors.whiteColor, fontWeight: FontWeight.w600,),
                        ),

                      ],),
                    ),
                    GetPngImage(imagePath: AppImages.dots,  height: 20.h, width: 20.w,),

                  ],
                ),
              ),
            ),

            Container(
              color: AppColors.containerGrey,
              child: TabBar(
                controller: _tabController,
                labelColor: AppColors.primaryColor,
                unselectedLabelColor: AppColors.black,
                indicatorColor: AppColors.primaryColor,
                tabs: const [
                  Tab(child: CustomText(text: "Image", fontWeight: FontWeight.w600,),),
                  Tab(child: CustomText(text: "Data", fontWeight: FontWeight.w600,),),
                  Tab(child: CustomText(text: "Items", fontWeight: FontWeight.w600,),),
                  Tab(text: ''),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  DataTabWidget(),
                  const ImageTabWidget(),
                  const ItemTabWidget(),
                  const Tab(text: ''),
                ],
              ),
            ),
            Container(
              // height: 50,
              padding: EdgeInsets.symmetric(vertical: 20.h),
              color: Colors.grey,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Utils.horizontalPadding()),
                  child: const CustomButton(text: "Move to Ready", background: AppColors.secondaryColor,),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
