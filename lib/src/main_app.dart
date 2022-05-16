import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'controllers/calendar_controller.dart';
import 'controllers/main_controller.dart';
import 'screens/home_screen.dart';
import 'utils/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Get.put(MainController());
    Get.put(CalendarController());
    return ScreenUtilInit(
      designSize: const Size(390, 750),
      builder: (child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: mainTheme(),
          home: child,
        );
      },
      child: const HomeScreen(),
    );
  }
}
