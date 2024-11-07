import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/features/homepage/presentation/pages/homepage.dart';

import '../../../../core/util/app_colors.dart';
import '../../../../core/util/app_images.dart';
import '../../../custom_widgets/custom_png_image.dart';
import '../provider/main_provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> _pages = <Widget>[
    Homepage(),
    Homepage(),
    Homepage(),
    Homepage(),
    Homepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => MainProvider(),
        child: Consumer<MainProvider>(
          builder: (context, provider, child) {
            return Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: AppColors.primaryColor,
                selectedIconTheme:
                    const IconThemeData(color: AppColors.primaryColor),
                items: <BottomNavigationBarItem>[
                  getBottomIcon(
                    message: LocaleKeys.home,
                    imagePath: AppImages.home,
                  ),
                  getBottomIcon(
                    message: LocaleKeys.income,
                    imagePath: AppImages.income,
                  ),
                  getBottomIcon(
                    message: LocaleKeys.scan,
                    imagePath: AppImages.scan,
                  ),
                  getBottomIcon(
                    message: LocaleKeys.expense,
                    imagePath: AppImages.expense,
                  ),
                  getBottomIcon(
                    message: LocaleKeys.setting,
                    imagePath: AppImages.setting,
                  ),
                ],
                currentIndex: provider.selectedIndex,
                onTap: provider.onItemTapped,
              ),
              body: _pages[provider.selectedIndex],
            );
          },
        ));
  }

  BottomNavigationBarItem getBottomIcon({
    required String message,
    required String imagePath,
  }) {
    return BottomNavigationBarItem(
      icon: Tooltip(
        message: message,
        child: GetPngImage(
          imagePath: imagePath,
          // imageCol: mainPro!.selectedIndex == 0 ? styles.green : null,
          height: 30.h,
        ),
      ),
      label: '',
    );
  }
}
