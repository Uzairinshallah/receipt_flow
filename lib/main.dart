import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:receipt_flow/features/homepage/presentation/provider/receipt_provider.dart';
import 'features/homepage/data/receipt_repository.dart';
import 'features/homepage/domain/receipt_impl.dart';
import 'features/homepage/presentation/pages/main_screen.dart';
import 'features/homepage/presentation/pages/scan_page.dart';
import 'features/onboarding/pages/landing_page.dart';
import 'features/scanned_item/presentation/pages/choose_category_page.dart';
import 'features/scanned_item/presentation/pages/single_item_details_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<UserRepository>(
        create: (_) => UserRepositoryImpl(baseUrl: 'https://expressjs-hufk.onrender.com/parse'),
      ),

    ],
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: LandingPage(),
            // home: MainScreen(),
            // home: ChooseCategoryPage(),
            // home: SingleItemDetailsPage(),
            // home: TestWidget(),
          );
        });
  }
}
