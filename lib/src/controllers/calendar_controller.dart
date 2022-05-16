import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/utils.dart';

class CalendarController extends GetxController {
  final DateTime initialDate = DateTime.now().deleteHour();

  double heightFactor(int index, bool isMarked) {
    final isToday = index == 0;
    double factor = 0;
    if (isToday) {
      factor += 16.h;
    }
    if (isMarked) {
      factor += 16.h;
    }
    return factor;
  }
}
