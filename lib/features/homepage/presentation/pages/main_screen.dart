import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:receipt_flow/core/util/app_strings.dart';
import 'package:receipt_flow/features/expanse/presentation/pages/expanse_page.dart';
import 'package:receipt_flow/features/homepage/presentation/pages/homepage.dart';
import 'package:receipt_flow/features/homepage/presentation/pages/scan_page.dart';
import 'package:receipt_flow/features/income/presentation/income_page.dart';
import 'package:receipt_flow/features/settings/presentation/pages/settings_page.dart';

import '../../../../core/util/app_colors.dart';
import '../../../../core/util/app_images.dart';
import '../../../custom_widgets/custom_png_image.dart';
import '../../domain/receipt_impl.dart';
import '../provider/main_provider.dart';
import '../provider/receipt_provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> _pages = <Widget>[
    Homepage(),
    const IncomePage(),
    ScanPage(),
    const ExpansePage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainProvider()),
        ChangeNotifierProvider(create: (context) => ReceiptProvider(userRepository: context.read<UserRepository>(),)),
      ],
      child: Consumer2<MainProvider, ReceiptProvider>(
        builder: (context, mainProvider, receiptProvider, child) {
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
              currentIndex: mainProvider.selectedIndex,
              onTap: mainProvider.onItemTapped,
            ),
            body: _pages[mainProvider.selectedIndex],
          );
        },
      ),
    );

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
