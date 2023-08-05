import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gaamtiime/routs.dart';
import 'package:get/get.dart';

import 'static/color.dart';
import 'medilewere/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                scrollbarTheme: ScrollbarThemeData(
                  thumbColor: MaterialStateProperty.all<Color>(kMainColor),
                  trackColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                brightness: Brightness.light,
                appBarTheme:
                    const AppBarTheme(color: Colors.transparent, elevation: 0),
                primaryColor: kMainColor,
                scaffoldBackgroundColor: kBackgroundColorLight),
            getPages: routes,
          );
        });
  }
}
