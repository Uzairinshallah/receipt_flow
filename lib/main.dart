import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/homepage/presentation/pages/main_screen.dart';
import 'features/homepage/presentation/pages/test.dart';
import 'features/onboarding/pages/landing_page.dart';
import 'features/scanned_item/presentation/pages/choose_category_page.dart';
import 'features/scanned_item/presentation/pages/single_item_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        responsiveWidgets: [MaterialApp.router.toString()],
        splitScreenMode: true,
        builder: (context, child) {
          SystemChrome.setPreferredOrientations(
            [
              DeviceOrientation.portraitUp,
              DeviceOrientation.portraitDown,
            ],
          );
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            // home: LandingPage(),
            // home: MainScreen(),
            // home: ChooseCategoryPage(),
            // home: SingleItemDetailsPage(),
            home: TestWidget(),
          );
        });
  }
}
