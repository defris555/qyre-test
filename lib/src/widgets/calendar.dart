import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/calendar_controller.dart';
import '../utils/utils.dart';

class Calendar extends StatelessWidget {
  final bool isBottom;
  const Calendar({Key? key, this.isBottom = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const daysCount = 7;
    final size = MediaQuery.of(context).size;
    return GetBuilder<CalendarController>(builder: (controller) {
      return SizedBox(
        width: size.width,
        height: 125.h,
        child: ListView.separated(
            itemCount: daysCount,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, _) => SizedBox(
                  width: 8.w,
                ),
            itemBuilder: (context, index) {
              final isMarked = markedDays.contains(index);
              final currentDay =
                  controller.initialDate.add(Duration(days: index));
              final bodytext1 = Theme.of(context).textTheme.bodyText1!;
              final bodytext2 = Theme.of(context).textTheme.bodyText2!;
              return isBottom
                  ? Container(
                      height: context.height,
                      width: index == 0 ? 76.w : 60.w,
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              if (index == 0)
                                Text(
                                  'TODAY ',
                                  style: bodytext2.copyWith(fontSize: 11.sp),
                                ),
                              Text(
                                DtUtils.getDayOfWeek(currentDay),
                                style: bodytext2.copyWith(
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (isMarked)
                                _Marker(index: markedDays.indexOf(index)),
                              if (isMarked) SizedBox(width: 2.w),
                              Text(
                                DtUtils.getDayOfMonth(currentDay),
                                style: bodytext2.copyWith(
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(width: 2.w),
                              Text(
                                DtUtils.getMonth(currentDay) + '.',
                                style: bodytext2.copyWith(
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : SizedBox(
                      width: 62.w,
                      child: FittedBox(
                        child: Container(
                          height: 79.h +
                              controller.heightFactor(
                                index,
                                isMarked,
                              ),
                          width: 62.w,
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (index == 0)
                                  Text(
                                    'TODAY',
                                    style: bodytext2,
                                  ),
                                if (index == 0) SizedBox(height: 6.h),
                                Text(
                                  DtUtils.getDayOfWeek(currentDay),
                                  style: bodytext1.copyWith(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                    height: 1.3,
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  DtUtils.getMonth(currentDay),
                                  style: bodytext2.copyWith(
                                    color: white,
                                    fontWeight: FontWeight.w500,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                Text(
                                  DtUtils.getDayOfMonth(currentDay),
                                  style: bodytext1.copyWith(
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                if (isMarked) SizedBox(height: 8.h),
                                if (isMarked)
                                  _Marker(index: markedDays.indexOf(index)),
                              ]),
                        ),
                      ),
                    );
            }),
      );
    });
  }
}

class _Marker extends StatelessWidget {
  final int index;

  const _Marker({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isEven = index % 2 == 0;
    return Container(
      width: 8.w,
      height: 8.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: isEven ? red : blue),
    );
  }
}
