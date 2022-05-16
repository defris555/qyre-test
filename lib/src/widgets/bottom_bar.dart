import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qyre_test/src/widgets/icons.dart';

import '../utils/utils.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 56.h,
          width: double.infinity,
          color: black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppIcons.home(color: white),
              AppIcons.homeBurger(color: white),
              AppIcons.notificationBell(color: white),
            ],
          ),
        ),
        Positioned(
          left: 325.w,
          bottom: 30.h,
          child: Container(
            alignment: Alignment.center,
            height: 16.w,
            width: 16.w,
            decoration: BoxDecoration(
              color: red,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              '2',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: white, fontSize: 10.sp),
            ),
          ),
        ),
      ],
    );
  }
}
